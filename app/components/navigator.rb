# This component drows a tree that represents a menu. Clicking on a tree node makes a specific component to open in the Workspace component, the id to which must be passed as the :workspace_id parameter (see the Application component).
class Navigator < Netzke::Base
  js_configure do |c|
    c.extend = "Ext.tree.Panel"

    # Mix in the javascript object on class level from navigator/javascripts/navigator.js
    c.mixin
  end

  def leaf(text, component, icon = nil)
    { text: text,
      icon: icon && uri_to_icon(icon),
      cmp: component,
      leaf: true
    }
  end

  def configure(c)
    c.store = {
      root: {
        expanded: true,
        children: [
          leaf('Profiles', 'Profiles', :page_white_stack),
        ]
      }
    }

    super
  end
end
