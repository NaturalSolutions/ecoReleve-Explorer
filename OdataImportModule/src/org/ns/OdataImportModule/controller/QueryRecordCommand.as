package org.ns.OdataImportModule.controller
{
	import flash.filesystem.File;
	
	import org.ns.OdataImportModule.controller.NotificationConstants;
	import org.ns.common.model.VO.QueryVO;
	import org.ns.common.controller.CommonNotificationConstants;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.*;
	import org.puremvc.as3.multicore.utilities.fabrication.patterns.command.SimpleFabricationCommand;
	
	public class QueryRecordCommand extends SimpleFabricationCommand
	{
		override public function execute( note:INotification ):void
		{
			//notify shell with query
			routeNotification(CommonNotificationConstants.RECORD_QUERY_NOTIFICATION,note.getBody() as QueryVO, "query", "*")
		}
	
	}
}