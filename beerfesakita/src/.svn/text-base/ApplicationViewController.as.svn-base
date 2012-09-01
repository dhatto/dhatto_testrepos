package
{
	import flash.events.MouseEvent;
	import mx.core.IMXMLObject;
	import views.NewsView;

	public class ApplicationViewController implements IMXMLObject
	{
		private var _view:beerfesakita;
		
		public function ApplicationViewController()
		{
		}

		public function initialized(document:Object, id:String):void
		{
			_view = document as beerfesakita;
		}

		internal function tabbedviewnavigator_clickHandler(event:MouseEvent):void
		{
			//event.currentTarget

			if(_view.tabbedNavigator.selectedIndex == 0)
			{
				var newsView:NewsView = _view.newsViewNavigator.activeView as NewsView;
				newsView.ctlr.HideBrowser();
			}
		}
	}
}

