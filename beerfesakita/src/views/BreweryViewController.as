package views
{
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.media.StageWebView;
	import mx.collections.ArrayCollection;
	import mx.core.IMXMLObject;
	import spark.components.TabbedViewNavigatorApplication;
	import spark.events.ViewNavigatorEvent;

	public class BreweryViewController implements IMXMLObject
	{
		private var _view:BreweryView;

		[Bindable]
		private var breweryDataProvider:ArrayCollection = new ArrayCollection([
			{breweryName:"あくらビール", placeName:"秋田県"}, 
			{breweryName:"田沢湖ビール", placeName:"秋田県"}, 
			{breweryName:"湖畔の杜ビール", placeName:"秋田県"}]);

		public function BreweryViewController()
		{
		}

		public function initialized(document:Object, id:String):void
		{
			_view = document as BreweryView;
		}

		/**
		 * ViewのActivateHandler
		 * @event Event
		 * @return void
		 */
		internal function creationCompleteHandler(event:Event):void
		{
			_view.breweryList.dataProvider = breweryDataProvider;
		}
	}
}



