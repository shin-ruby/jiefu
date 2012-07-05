# -*- encoding : utf-8 -*-
require 'truncate_html/truncate_html_helper'

ActionView::Base.send :include, TruncateHtmlHelper
