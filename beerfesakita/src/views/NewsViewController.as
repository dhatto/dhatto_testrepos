package views
{
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.media.StageWebView;
	import mx.core.IMXMLObject;
	import spark.components.TabbedViewNavigatorApplication;
	import spark.events.ViewNavigatorEvent;

	public class NewsViewController implements IMXMLObject
	{
		private var _view:NewsView;
		private var _webView:StageWebView;
		private const URL:String = "http://www.aqula.co.jp/akitabeerfes/";

		public function NewsViewController()
		{
		}

		public function initialized(document:Object, id:String):void
		{
			_view = document as NewsView;
		}

		/**
		 * ViewのActivateHandler
		 * @event Event
		 * @return void
		 */
		internal function creationCompleteHandler(event:Event):void
		{
			ShowBrowser();
		}

		public function HideBrowser():void
		{
			if(_webView != null)
			{
				_webView.stage = null; // 非表示にする
				_webView.dispose();    // メモリ上から破棄
				_webView = null;
			}
		}

		internal function ShowBrowser():void
		{
			if(_view.tabBarVisible)
			{
				var app:TabbedViewNavigatorApplication = TabbedViewNavigatorApplication(_view.parentApplication);
			}
			
			_webView = new StageWebView();
			// _view.stageはcreationCompleteの時点でnullなので
			_webView.stage = _view.systemManager.stage;
			_webView.viewPort = new Rectangle(0, 0, 320, 400);
//				app.tabbedNavigator.tabBar.width / 2,
//				app.height - app.tabbedNavigator.tabBar.height / 2);

			// 指定したURLのページをStageWebViewに表示する
			//stageWebView.loadURL("http://twitter.com/Akita_Beerfes");
			//stageWebView.loadURL("https://www.facebook.com/akitabeerfes");
			_webView.loadURL(URL);
			//stageWebView.stage.scaleX		
		}
	}
}
