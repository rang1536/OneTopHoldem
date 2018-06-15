/*
 * slideControl - jQuery Plugin
 * version: 1.2 October 2012
 * @requires jQuery v1.6 or later
 *
 * Examples at http://nikorablin.com/slideControl
 * Free to use and abuse under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 *
 */
(function($){
	 $.fn.slideControl = function(options) {
		
		// defaults
		var defaults = {
			speed: 400,
			lowerBound: 10000,
			upperBound: 100000
		};

		var options = $.extend(defaults, options);
		
		return this.each(function() {
			
			// set vars
			var o = options;
			var controller = false;
			var position = 0;
			var obj = this;
			$(this).addClass('slideControlInput');
			var parent = $(this).parent();
			var label = $(parent).find('label');
			parent.html($(obj).wrap("<span></span>").parent().html() + "<br><span class=\"slideControlContainer\"><span class=\"slideControlFill\" style=\"width:" + $(obj).val()*0.001 + "%\"><span class=\"slideControlHandle\"></span></span></span>");
			var container = parent.find('.slideControlContainer');
			var fill = container.find('.slideControlFill');
			var handle = fill.find('.slideControlHandle');
			var input = parent.find('input');
			var containerWidth = container.outerWidth() + 1;
			var handleWidth = $(handle).outerWidth();
			var offset = $(container).offset();
			var animate = function(value){$(fill).animate({ width: value + "%"}, o.speed);}
			
			$(window).resize(function() {
				offset = $(container).offset();
			})
			
			//adds shadow class to handle for IE <9
			if (getInternetExplorerVersion() < 100001 && getInternetExplorerVersion() > -1) {
				handle.addClass('ieShadow');
			}
			
			// when user clicks anywhere on the slider
			$(container).click(function(e) {		
				e.preventDefault();
				position = checkBoundaries(Math.round(((e.pageX - offset.left + handleWidth/2)/containerWidth)*100));
				
				animate(position);
				$(input).val(position*1000);
			});
			
			// when user clicks handle
			$(handle).mousedown(function(e) {
				e.preventDefault();
				controller = true;
				$(document).mousemove(function(e) {
					e.preventDefault();
					position = checkBoundaries(Math.round(((e.pageX - offset.left + handleWidth/2)/containerWidth)*100));
					if (controller) {	
						$(fill).width(position + "%");
						$(input).val(position*1000);
					}
				});
				$(document).mouseup(function() {
					e.preventDefault();
					controller = false;
				});
			});
			
			// when user changes value in input
			$(input).change(function() {
				var value = checkBoundaries($(this).val());
				if ($(this).val() > o.upperBound)
					$(input).val(o.upperBound);
				else if ($(this).val() < o.lowerBound)
					$(input).val(o.lowerBound);
				animate(value);
			});
			
		});
		
		// checks if value is within boundaries
		function checkBoundaries(value) {
			if (value < options.lowerBound*0.001)
				return options.lowerBound*0.001;
			else if (value > options.upperBound*0.001)
				return options.upperBound*0.001;
			else
				return value;
		}
		
		// checks ie version
		function getInternetExplorerVersion(){
		   var rv = -1;
		   if (navigator.appName == 'Microsoft Internet Explorer') {
			  var ua = navigator.userAgent;
			  var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
			  if (re.exec(ua) != null)
				 rv = parseFloat( RegExp.$1 );
		   }
		   return rv;
		}
		return this;
	 }

	 $.fn.slideControl2 = function(options) {
		
		// defaults
		var defaults = {
			speed: 400,
			lowerBound: 0,
			upperBound: 1000000000
		};

		var options = $.extend(defaults, options);
		
		return this.each(function() {
			
			// set vars
			var o = options;
			var controller = false;
			var position = 0;
			var obj = this;
			$(this).addClass('slideControlInput');
			var parent = $(this).parent();
			var label = $(parent).find('label');
			parent.html($(obj).wrap("<span></span>").parent().html() + "<br><span class=\"slideControlContainer\"><span class=\"slideControlFill\" style=\"width:" + $(obj).val()*0.0000001 + "%\"><span class=\"slideControlHandle\"></span></span></span>");
			var container = parent.find('.slideControlContainer');
			var fill = container.find('.slideControlFill');
			var handle = fill.find('.slideControlHandle');
			var input = parent.find('input');
			var containerWidth = container.outerWidth() + 1;
			var handleWidth = $(handle).outerWidth();
			var offset = $(container).offset();
			var animate = function(value){$(fill).animate({ width: value + "%"}, o.speed);}
			
			$(window).resize(function() {
				offset = $(container).offset();
			})
			
			//adds shadow class to handle for IE <9
			if (getInternetExplorerVersion() < 1000000001 && getInternetExplorerVersion() > -1) {
				handle.addClass('ieShadow');
			}
			
			// when user clicks anywhere on the slider
			$(container).click(function(e) {		
				e.preventDefault();
				position = checkBoundaries(Math.round(((e.pageX - offset.left + handleWidth/2)/containerWidth)*100000));
				
				animate(position);
				$(input).val(position*10000000);
			});
			
			// when user clicks handle
			$(handle).mousedown(function(e) {
				e.preventDefault();
				controller = true;
				$(document).mousemove(function(e) {
					e.preventDefault();
					position = checkBoundaries(Math.round(((e.pageX - offset.left + handleWidth/2)/containerWidth)*100000));
					if (controller) {	
						$(fill).width(position + "%");
						$(input).val(position*10000000);
					}
				});
				$(document).mouseup(function() {
					e.preventDefault();
					controller = false;
				});
			});
			
			// when user changes value in input
			$(input).change(function() {
				var value = checkBoundaries($(this).val());
				if ($(this).val() > o.upperBound)
					$(input).val(o.upperBound);
				else if ($(this).val() < o.lowerBound)
					$(input).val(o.lowerBound);
				animate(value);
			});
			
		});
		
		// checks if value is within boundaries
		function checkBoundaries(value) {
			if (value < options.lowerBound*0.0000001)
				return options.lowerBound*0.0000001;
			else if (value > options.upperBound*0.0000001)
				return options.upperBound*0.0000001;
			else
				return value;
		}
		
		// checks ie version
		function getInternetExplorerVersion(){
		   var rv = -1;
		   if (navigator.appName == 'Microsoft Internet Explorer') {
			  var ua = navigator.userAgent;
			  var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
			  if (re.exec(ua) != null)
				 rv = parseFloat( RegExp.$1 );
		   }
		   return rv;
		}
		return this;
	 }
})(jQuery);
