package org.ns.dataconnecteur.shell.controller
{
	import flash.filesystem.File;
	
	import mx.collections.ArrayCollection;
	
	import org.ns.dataconnecteur.shell.model.proxy.DatabaseProxy;
	import org.ns.dataconnecteur.shell.model.proxy.StationProxy;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.utilities.fabrication.patterns.command.SimpleFabricationCommand;
    
    
    public class StationsAddCommand extends SimpleFabricationCommand
    {
		override public function execute(note:INotification):void 
    	{    		         	
			var pxyDatabase:DatabaseProxy=retrieveProxy(DatabaseProxy.NAME) as DatabaseProxy;
			var pxyStation:StationProxy=retrieveProxy(StationProxy.NAME) as StationProxy;
			
			
			pxyStation.addStations(pxyDatabase.getSqlConnexion,note.getBody() as ArrayCollection);
			
		}
    }

}