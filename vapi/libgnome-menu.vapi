/* libgnome-menu.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "GMenu", lower_case_cprefix = "gmenu_")]
namespace GMenu {
	[CCode (cprefix = "GMENU_TREE_FLAGS_", has_type_id = "0", cheader_filename = "gnome-menus/gmenu-tree.h")]
	public enum TreeFlags {
		NONE,
		INCLUDE_EXCLUDED,
		SHOW_EMPTY,
		INCLUDE_NODISPLAY,
		MASK
	}
	[CCode (cprefix = "GMENU_TREE_ITEM_", has_type_id = "0", cheader_filename = "gnome-menus/gmenu-tree.h")]
	public enum TreeItemType {
		INVALID,
		DIRECTORY,
		ENTRY,
		SEPARATOR,
		HEADER,
		ALIAS
	}
	[CCode (ref_function = "gmenu_tree_item_ref", unref_function = "gmenu_tree_item_unref", cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeItem {
		public GMenu.TreeItemType get_type ();
		public TreeItem ();
		public weak GMenu.TreeDirectory get_parent ();
		public void* get_user_data ();
		public void set_user_data (void* user_data, GLib.DestroyNotify dnotify);
	}
	[Compact]
	[CCode (ref_function = "gmenu_tree_ref", unref_function = "gmenu_tree_unref", cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class Tree {
		public void add_monitor (GMenu.TreeChangedFunc callback);
		public weak GMenu.TreeDirectory get_directory_from_path (string path);
		public weak string get_menu_file ();
		public weak GMenu.TreeDirectory get_root_directory ();
		public void* get_user_data ();
		public static weak GMenu.Tree lookup (string menu_file, GMenu.TreeFlags flags);
		public void remove_monitor (GMenu.TreeChangedFunc callback);
		public void set_user_data (void* user_data, GLib.DestroyNotify dnotify);
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeAlias : GMenu.TreeItem {
		public weak GMenu.TreeDirectory get_directory ();
		public weak GMenu.TreeItem get_item ();
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeDirectory : GMenu.TreeItem {
		public weak string get_comment ();
		public weak GLib.SList get_contents ();
		public weak string get_desktop_file_path ();
		public weak string get_icon ();
		public bool get_is_nodisplay ();
		public weak string get_menu_id ();
		public weak string get_name ();
		public weak GMenu.Tree get_tree ();
		public weak string make_path (GMenu.TreeEntry entry);
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeEntry : GMenu.TreeItem {
		public weak string get_comment ();
		public weak string get_desktop_file_id ();
		public weak string get_desktop_file_path ();
		public weak string get_exec ();
		public weak string get_icon ();
		public bool get_is_excluded ();
		public bool get_is_nodisplay ();
		public bool get_launch_in_terminal ();
		public weak string get_name ();
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeHeader : GMenu.TreeItem {
		public weak GMenu.TreeDirectory get_directory ();
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public class TreeSeparator : GMenu.TreeItem {
	}
	[CCode (cheader_filename = "gnome-menus/gmenu-tree.h")]
	public delegate void TreeChangedFunc (GMenu.Tree tree);
}
