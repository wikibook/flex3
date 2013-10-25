package managers
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;

	[Event(name='toggleViewOnly')]
	public class UpdateManager extends EventDispatcher
	{
		private static var instance:UpdateManager;
		
		public function toggleViewOnly():void {
			dispatchEvent( new Event( 'toggleViewOnly' ) );
		}

		public static function getInstance():UpdateManager {
			if ( !instance ) {
				instance = new UpdateManager();
			}
			
			return instance;
		}

		public function UpdateManager(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}