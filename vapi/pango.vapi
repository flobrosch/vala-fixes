/* pango.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Pango", lower_case_cprefix = "pango_")]
namespace Pango {
	[CCode (cprefix = "PANGO_ALIGN_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Alignment {
		LEFT,
		CENTER,
		RIGHT
	}
	[CCode (cprefix = "PANGO_ATTR_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum AttrType {
		INVALID,
		LANGUAGE,
		FAMILY,
		STYLE,
		WEIGHT,
		VARIANT,
		STRETCH,
		SIZE,
		FONT_DESC,
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH,
		RISE,
		SHAPE,
		SCALE,
		FALLBACK,
		LETTER_SPACING,
		UNDERLINE_COLOR,
		STRIKETHROUGH_COLOR,
		ABSOLUTE_SIZE,
		GRAVITY,
		GRAVITY_HINT
	}
	[CCode (cprefix = "PANGO_COVERAGE_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum CoverageLevel {
		NONE,
		FALLBACK,
		APPROXIMATE,
		EXACT
	}
	[CCode (cprefix = "PANGO_DIRECTION_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Direction {
		LTR,
		RTL,
		TTB_LTR,
		TTB_RTL,
		WEAK_LTR,
		WEAK_RTL,
		NEUTRAL
	}
	[CCode (cprefix = "PANGO_ELLIPSIZE_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum EllipsizeMode {
		NONE,
		START,
		MIDDLE,
		END
	}
	[CCode (cprefix = "PANGO_GRAVITY_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Gravity {
		SOUTH,
		EAST,
		NORTH,
		WEST,
		AUTO
	}
	[CCode (cprefix = "PANGO_GRAVITY_HINT_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum GravityHint {
		NATURAL,
		STRONG,
		LINE
	}
	[CCode (cprefix = "PANGO_RENDER_PART_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum RenderPart {
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH
	}
	[CCode (cprefix = "PANGO_SCRIPT_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Script {
		INVALID_CODE,
		COMMON,
		INHERITED,
		ARABIC,
		ARMENIAN,
		BENGALI,
		BOPOMOFO,
		CHEROKEE,
		COPTIC,
		CYRILLIC,
		DESERET,
		DEVANAGARI,
		ETHIOPIC,
		GEORGIAN,
		GOTHIC,
		GREEK,
		GUJARATI,
		GURMUKHI,
		HAN,
		HANGUL,
		HEBREW,
		HIRAGANA,
		KANNADA,
		KATAKANA,
		KHMER,
		LAO,
		LATIN,
		MALAYALAM,
		MONGOLIAN,
		MYANMAR,
		OGHAM,
		OLD_ITALIC,
		ORIYA,
		RUNIC,
		SINHALA,
		SYRIAC,
		TAMIL,
		TELUGU,
		THAANA,
		THAI,
		TIBETAN,
		CANADIAN_ABORIGINAL,
		YI,
		TAGALOG,
		HANUNOO,
		BUHID,
		TAGBANWA,
		BRAILLE,
		CYPRIOT,
		LIMBU,
		OSMANYA,
		SHAVIAN,
		LINEAR_B,
		TAI_LE,
		UGARITIC,
		NEW_TAI_LUE,
		BUGINESE,
		GLAGOLITIC,
		TIFINAGH,
		SYLOTI_NAGRI,
		OLD_PERSIAN,
		KHAROSHTHI,
		UNKNOWN,
		BALINESE,
		CUNEIFORM,
		PHOENICIAN,
		PHAGS_PA,
		NKO
	}
	[CCode (cprefix = "PANGO_STRETCH_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Stretch {
		ULTRA_CONDENSED,
		EXTRA_CONDENSED,
		CONDENSED,
		SEMI_CONDENSED,
		NORMAL,
		SEMI_EXPANDED,
		EXPANDED,
		EXTRA_EXPANDED,
		ULTRA_EXPANDED
	}
	[CCode (cprefix = "PANGO_STYLE_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Style {
		NORMAL,
		OBLIQUE,
		ITALIC
	}
	[CCode (cprefix = "PANGO_TAB_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum TabAlign {
		LEFT
	}
	[CCode (cprefix = "PANGO_UNDERLINE_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Underline {
		NONE,
		SINGLE,
		DOUBLE,
		LOW,
		ERROR
	}
	[CCode (cprefix = "PANGO_VARIANT_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Variant {
		NORMAL,
		SMALL_CAPS
	}
	[CCode (cprefix = "PANGO_WEIGHT_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum Weight {
		ULTRALIGHT,
		LIGHT,
		NORMAL,
		SEMIBOLD,
		BOLD,
		ULTRABOLD,
		HEAVY
	}
	[CCode (cprefix = "PANGO_WRAP_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	public enum WrapMode {
		WORD,
		CHAR,
		WORD_CHAR
	}
	[CCode (cprefix = "PANGO_FONT_MASK_", has_type_id = "0", cheader_filename = "pango/pango.h")]
	[Flags]
	public enum FontMask {
		FAMILY,
		STYLE,
		VARIANT,
		WEIGHT,
		STRETCH,
		SIZE,
		GRAVITY
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class Language : GLib.Boxed {
		public weak string to_string ();
		public Language ();
		public static weak Pango.Language from_string (string language);
		public static weak Pango.Language get_default ();
		public weak string get_sample_string ();
		public bool includes_script (Pango.Script script);
		public bool matches (string range_list);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class Analysis {
		public weak Pango.EngineShape shape_engine;
		public weak Pango.EngineLang lang_engine;
		public weak Pango.Font font;
		public uchar level;
		public uchar gravity;
		public uchar flags;
		public uchar script;
		public weak Pango.Language language;
		public weak GLib.SList extra_attrs;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrClass {
		public Pango.AttrType type;
		public weak GLib.Callback copy;
		public weak GLib.Callback destroy;
		public weak GLib.Callback equal;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrColor {
		public weak Pango.Attribute attr;
		public Pango.Color color;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrFloat {
		public weak Pango.Attribute attr;
		public double value;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrFontDesc {
		public weak Pango.Attribute attr;
		public weak Pango.FontDescription desc;
		public AttrFontDesc (Pango.FontDescription desc);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrInt {
		public weak Pango.Attribute attr;
		public int value;
	}
	[Compact]
	[CCode (copy_function = "pango_attr_iterator_copy", free_function = "pango_attr_iterator_destroy", cheader_filename = "pango/pango.h")]
	public class AttrIterator {
		public weak Pango.AttrIterator copy ();
		public weak Pango.Attribute get (Pango.AttrType type);
		public weak GLib.SList get_attrs ();
		public void get_font (Pango.FontDescription desc, out weak Pango.Language language, GLib.SList extra_attrs);
		public bool next ();
		public void range (int start, int end);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrLanguage {
		public weak Pango.Attribute attr;
		public weak Pango.Language value;
		public AttrLanguage (Pango.Language language);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrShape {
		public weak Pango.Attribute attr;
		public Pango.Rectangle ink_rect;
		public Pango.Rectangle logical_rect;
		public void* data;
		public weak Pango.AttrDataCopyFunc copy_func;
		public weak GLib.DestroyNotify destroy_func;
		public AttrShape (Pango.Rectangle ink_rect, Pango.Rectangle logical_rect);
		public AttrShape.with_data (Pango.Rectangle ink_rect, Pango.Rectangle logical_rect, void* data, Pango.AttrDataCopyFunc copy_func, GLib.DestroyNotify destroy_func);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrSize {
		public weak Pango.Attribute attr;
		public int size;
		public uint absolute;
		public AttrSize (int size);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class AttrString {
		public weak Pango.Attribute attr;
		public weak string value;
	}
	[Compact]
	[CCode (copy_function = "pango_attribute_copy", free_function = "pango_attribute_destroy", cheader_filename = "pango/pango.h")]
	public class Attribute {
		public weak Pango.AttrClass klass;
		public uint start_index;
		public uint end_index;
		public weak Pango.Attribute copy ();
		public bool equal (Pango.Attribute attr2);
		public void init (Pango.AttrClass klass);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class ContextClass {
	}
	[Compact]
	[CCode (ref_function = "pango_coverage_ref", unref_function = "pango_coverage_unref", cheader_filename = "pango/pango.h")]
	public class Coverage {
		public weak Pango.Coverage copy ();
		public static weak Pango.Coverage from_bytes (uchar[][] bytes);
		public Pango.CoverageLevel get (int index_);
		public void max (Pango.Coverage other);
		public Coverage ();
		public void set (int index_, Pango.CoverageLevel level);
		public void to_bytes (uchar[][] bytes);
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class EngineLang {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class EngineShape {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class Glyph {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class GlyphGeometry {
		public weak Pango.GlyphUnit width;
		public weak Pango.GlyphUnit x_offset;
		public weak Pango.GlyphUnit y_offset;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class GlyphInfo {
		public weak Pango.Glyph glyph;
		public weak Pango.GlyphGeometry geometry;
		public weak Pango.GlyphVisAttr attr;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class GlyphUnit {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class GlyphVisAttr {
		public uint is_cluster_start;
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class LayoutClass {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class LayoutRun {
	}
	[Compact]
	[CCode (cheader_filename = "pango/pango.h")]
	public class ScriptIter {
		public void get_range (out weak string start, out weak string end, Pango.Script script);
		public ScriptIter (string text, int length);
		public bool next ();
	}
	[Compact]
	[CCode (ref_function = "pango_attr_list_ref", unref_function = "pango_attr_list_unref", cheader_filename = "pango/pango.h")]
	public class AttrList : GLib.Boxed {
		public void change (Pango.Attribute attr);
		public weak Pango.AttrList copy ();
		public weak Pango.AttrList filter (Pango.AttrFilterFunc func, void* data);
		public weak Pango.AttrIterator get_iterator ();
		public void insert (Pango.Attribute attr);
		public void insert_before (Pango.Attribute attr);
		public AttrList ();
		public void splice (Pango.AttrList other, int pos, int len);
	}
	[Compact]
	[CCode (copy_function = "pango_font_description_copy", cheader_filename = "pango/pango.h")]
	public class FontDescription : GLib.Boxed {
		public bool better_match (Pango.FontDescription old_match, Pango.FontDescription new_match);
		public weak Pango.FontDescription copy ();
		public weak Pango.FontDescription copy_static ();
		public bool equal (Pango.FontDescription desc2);
		public static weak Pango.FontDescription from_string (string str);
		public weak string get_family ();
		public Pango.Gravity get_gravity ();
		public Pango.FontMask get_set_fields ();
		public int get_size ();
		public bool get_size_is_absolute ();
		public Pango.Stretch get_stretch ();
		public Pango.Style get_style ();
		public Pango.Variant get_variant ();
		public Pango.Weight get_weight ();
		public uint hash ();
		public void merge (Pango.FontDescription desc_to_merge, bool replace_existing);
		public void merge_static (Pango.FontDescription desc_to_merge, bool replace_existing);
		public FontDescription ();
		public void set_absolute_size (double size);
		public void set_family (string family);
		public void set_family_static (string family);
		public void set_gravity (Pango.Gravity gravity);
		public void set_size (int size);
		public void set_stretch (Pango.Stretch stretch);
		public void set_style (Pango.Style style);
		public void set_variant (Pango.Variant variant);
		public void set_weight (Pango.Weight weight);
		public weak string to_filename ();
		public weak string to_string ();
		public void unset_fields (Pango.FontMask to_unset);
	}
	[Compact]
	[CCode (ref_function = "pango_font_metrics_ref", unref_function = "pango_font_metrics_unref", cheader_filename = "pango/pango.h")]
	public class FontMetrics : GLib.Boxed {
		public int get_approximate_char_width ();
		public int get_approximate_digit_width ();
		public int get_ascent ();
		public int get_descent ();
		public int get_strikethrough_position ();
		public int get_strikethrough_thickness ();
		public int get_underline_position ();
		public int get_underline_thickness ();
	}
	[Compact]
	[CCode (copy_function = "pango_glyph_item_copy", cheader_filename = "pango/pango.h")]
	public class GlyphItem : GLib.Boxed {
		public weak Pango.Item item;
		public weak Pango.GlyphString glyphs;
		public weak GLib.SList apply_attrs (string text, Pango.AttrList list);
		public weak Pango.GlyphItem copy ();
		public void letter_space (string text, Pango.LogAttr[] log_attrs, int letter_spacing);
		public weak Pango.GlyphItem split (string text, int split_index);
	}
	[Compact]
	[CCode (copy_function = "pango_glyph_string_copy", cheader_filename = "pango/pango.h")]
	public class GlyphString : GLib.Boxed {
		public int num_glyphs;
		public weak Pango.GlyphInfo glyphs;
		public int log_clusters;
		public int space;
		public weak Pango.GlyphString copy ();
		public void extents (Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void extents_range (int start, int end, Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_logical_widths (string text, int length, int embedding_level, int logical_widths);
		public int get_width ();
		public void index_to_x (string text, int length, Pango.Analysis analysis, int index_, bool trailing, int x_pos);
		public GlyphString ();
		public void set_size (int new_len);
		public void x_to_index (string text, int length, Pango.Analysis analysis, int x_pos, int index_, int trailing);
	}
	[Compact]
	[CCode (copy_function = "pango_item_copy", cheader_filename = "pango/pango.h")]
	public class Item : GLib.Boxed {
		public int offset;
		public int length;
		public int num_chars;
		public weak Pango.Analysis analysis;
		public weak Pango.Item copy ();
		public Item ();
		public weak Pango.Item split (int split_index, int split_offset);
	}
	[Compact]
	[CCode (copy_function = "pango_layout_iter_copy", cheader_filename = "pango/pango.h")]
	public class LayoutIter : GLib.Boxed {
		public bool at_last_line ();
		public weak Pango.LayoutIter copy ();
		public int get_baseline ();
		public void get_char_extents (out Pango.Rectangle logical_rect);
		public void get_cluster_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public int get_index ();
		public weak Pango.Layout get_layout ();
		public void get_layout_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutLine get_line ();
		public void get_line_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutLine get_line_readonly ();
		public void get_line_yrange (out int y0_, out int y1_);
		public weak Pango.LayoutRun get_run ();
		public void get_run_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutRun get_run_readonly ();
		public bool next_char ();
		public bool next_cluster ();
		public bool next_line ();
		public bool next_run ();
	}
	[Compact]
	[CCode (ref_function = "pango_layout_line_ref", unref_function = "pango_layout_line_unref", cheader_filename = "pango/pango.h")]
	public class LayoutLine : GLib.Boxed {
		public weak Pango.Layout layout;
		public int start_index;
		public int length;
		public weak GLib.SList runs;
		public uint is_paragraph_start;
		public uint resolved_dir;
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_x_ranges (int start_index, int end_index, int[] ranges);
		public void index_to_x (int index_, bool trailing, int x_pos);
		public bool x_to_index (int x_pos, int index_, int trailing);
	}
	[Compact]
	[CCode (copy_function = "pango_tab_array_copy", cheader_filename = "pango/pango.h")]
	public class TabArray : GLib.Boxed {
		public weak Pango.TabArray copy ();
		public bool get_positions_in_pixels ();
		public int get_size ();
		public void get_tab (int tab_index, Pango.TabAlign alignment, int location);
		public void get_tabs (out Pango.TabAlign alignments, int locations);
		public TabArray (int initial_size, bool positions_in_pixels);
		public TabArray.with_positions (int size, bool positions_in_pixels, Pango.TabAlign first_alignment, ...);
		public void resize (int new_size);
		public void set_tab (int tab_index, Pango.TabAlign alignment, int location);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Context : GLib.Object {
		public Pango.Direction get_base_dir ();
		public Pango.Gravity get_base_gravity ();
		public weak Pango.FontDescription get_font_description ();
		public weak Pango.FontMap get_font_map ();
		public Pango.Gravity get_gravity ();
		public Pango.GravityHint get_gravity_hint ();
		public weak Pango.Language get_language ();
		public Pango.Matrix get_matrix ();
		public weak Pango.FontMetrics get_metrics (Pango.FontDescription desc, Pango.Language language);
		public void list_families (Pango.FontFamily[] families);
		public weak Pango.Font load_font (Pango.FontDescription desc);
		public weak Pango.Fontset load_fontset (Pango.FontDescription desc, Pango.Language language);
		public void set_base_dir (Pango.Direction direction);
		public void set_base_gravity (Pango.Gravity gravity);
		public void set_font_description (Pango.FontDescription desc);
		public void set_gravity_hint (Pango.GravityHint hint);
		public void set_language (Pango.Language language);
		public void set_matrix (Pango.Matrix matrix);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Font : GLib.Object {
		public weak Pango.FontDescription describe ();
		public weak Pango.FontDescription describe_with_absolute_size ();
		public static void descriptions_free (Pango.FontDescription[] descs);
		public weak Pango.EngineShape find_shaper (Pango.Language language, uint ch);
		public weak Pango.Coverage get_coverage (Pango.Language language);
		public weak Pango.FontMap get_font_map ();
		public void get_glyph_extents (Pango.Glyph glyph, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.FontMetrics get_metrics (Pango.Language language);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFace : GLib.Object {
		public weak Pango.FontDescription describe ();
		public weak string get_face_name ();
		public bool is_synthesized ();
		public void list_sizes (int[] sizes);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFamily : GLib.Object {
		public weak string get_name ();
		public bool is_monospace ();
		public void list_faces (Pango.FontFace[] faces);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontMap : GLib.Object {
		public void list_families (Pango.FontFamily[] families);
		public weak Pango.Font load_font (Pango.Context context, Pango.FontDescription desc);
		public weak Pango.Fontset load_fontset (Pango.Context context, Pango.FontDescription desc, Pango.Language language);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Fontset : GLib.Object {
		public void @foreach (Pango.FontsetForeachFunc func, void* data);
		public weak Pango.Font get_font (uint wc);
		public weak Pango.FontMetrics get_metrics ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Layout : GLib.Object {
		public void context_changed ();
		public weak Pango.Layout copy ();
		public Pango.Alignment get_alignment ();
		public weak Pango.AttrList get_attributes ();
		public bool get_auto_dir ();
		public weak Pango.Context get_context ();
		public void get_cursor_pos (int index_, out Pango.Rectangle strong_pos, out Pango.Rectangle weak_pos);
		public Pango.EllipsizeMode get_ellipsize ();
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.FontDescription get_font_description ();
		public int get_height ();
		public int get_indent ();
		public weak Pango.LayoutIter get_iter ();
		public bool get_justify ();
		public weak Pango.LayoutLine get_line (int line);
		public int get_line_count ();
		public weak Pango.LayoutLine get_line_readonly (int line);
		public weak GLib.SList get_lines ();
		public weak GLib.SList get_lines_readonly ();
		public void get_log_attrs (Pango.LogAttr[] attrs);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_size (out int width, out int height);
		public bool get_single_paragraph_mode ();
		public void get_size (out int width, out int height);
		public int get_spacing ();
		public weak Pango.TabArray get_tabs ();
		public weak string get_text ();
		public int get_unknown_glyphs_count ();
		public int get_width ();
		public Pango.WrapMode get_wrap ();
		public void index_to_line_x (int index_, bool trailing, int line, int x_pos);
		public void index_to_pos (int index_, out Pango.Rectangle pos);
		public bool is_ellipsized ();
		public bool is_wrapped ();
		public void move_cursor_visually (bool strong, int old_index, int old_trailing, int direction, int new_index, int new_trailing);
		public Layout (Pango.Context context);
		public void set_alignment (Pango.Alignment alignment);
		public void set_attributes (Pango.AttrList attrs);
		public void set_auto_dir (bool auto_dir);
		public void set_ellipsize (Pango.EllipsizeMode ellipsize);
		public void set_font_description (Pango.FontDescription desc);
		public void set_height (int height);
		public void set_indent (int indent);
		public void set_justify (bool justify);
		public void set_markup (string markup, int length);
		public void set_markup_with_accel (string markup, int length, unichar accel_marker, unichar accel_char);
		public void set_single_paragraph_mode (bool setting);
		public void set_spacing (int spacing);
		public void set_tabs (Pango.TabArray tabs);
		public void set_text (string text, int length);
		public void set_width (int width);
		public void set_wrap (Pango.WrapMode wrap);
		public bool xy_to_index (int x, int y, int index_, int trailing);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Renderer : GLib.Object {
		public Pango.Underline underline;
		public bool strikethrough;
		public int active_count;
		public Pango.Matrix matrix;
		public void activate ();
		public void deactivate ();
		public void draw_layout (Pango.Layout layout, int x, int y);
		public void draw_layout_line (Pango.LayoutLine line, int x, int y);
		public Pango.Color get_color (Pango.RenderPart part);
		public weak Pango.Layout get_layout ();
		public weak Pango.LayoutLine get_layout_line ();
		public Pango.Matrix get_matrix ();
		public void set_color (Pango.RenderPart part, Pango.Color color);
		public void set_matrix (Pango.Matrix matrix);
		[NoWrapper]
		public virtual void begin ();
		public virtual void draw_error_underline (int x, int y, int width, int height);
		public virtual void draw_glyph (Pango.Font font, Pango.Glyph glyph, double x, double y);
		public virtual void draw_glyphs (Pango.Font font, Pango.GlyphString glyphs, int x, int y);
		public virtual void draw_rectangle (Pango.RenderPart part, int x, int y, int width, int height);
		[NoWrapper]
		public virtual void draw_shape (Pango.AttrShape attr, int x, int y);
		public virtual void draw_trapezoid (Pango.RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
		[NoWrapper]
		public virtual void end ();
		public virtual void part_changed (Pango.RenderPart part);
		[NoWrapper]
		public virtual void prepare_run (Pango.LayoutRun run);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public struct LogAttr {
		public uint is_line_break;
		public uint is_mandatory_break;
		public uint is_char_break;
		public uint is_white;
		public uint is_cursor_position;
		public uint is_word_start;
		public uint is_word_end;
		public uint is_sentence_boundary;
		public uint is_sentence_start;
		public uint is_sentence_end;
		public uint backspace_deletes_character;
		public uint is_expandable_space;
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public struct Rectangle {
		public int x;
		public int y;
		public int width;
		public int height;
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public struct Color {
		public ushort red;
		public ushort green;
		public ushort blue;
		public Pango.Color copy ();
		public void free ();
		public bool parse (string spec);
		public weak string to_string ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public struct Matrix {
		public double xx;
		public double xy;
		public double yx;
		public double yy;
		public double x0;
		public double y0;
		public void concat (Pango.Matrix new_matrix);
		public Pango.Matrix copy ();
		public void free ();
		public double get_font_scale_factor ();
		public void rotate (double degrees);
		public void scale (double scale_x, double scale_y);
		public void transform_distance (double dx, double dy);
		public void transform_pixel_rectangle (ref Pango.Rectangle rect);
		public void transform_point (double x, double y);
		public void transform_rectangle (ref Pango.Rectangle rect);
		public void translate (double tx, double ty);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate void* AttrDataCopyFunc ();
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate bool AttrFilterFunc (Pango.Attribute attribute);
	[CCode (cheader_filename = "pango/pango.h")]
	public delegate bool FontsetForeachFunc (Pango.Fontset fontset, Pango.Font font);
	public const int ANALYSIS_FLAG_CENTERED_BASELINE;
	public const string ENGINE_TYPE_LANG;
	public const string ENGINE_TYPE_SHAPE;
	public const string RENDER_TYPE_NONE;
	public const int SCALE;
	public const int UNKNOWN_GLYPH_HEIGHT;
	public const int UNKNOWN_GLYPH_WIDTH;
	public const int VERSION_MAJOR;
	public const int VERSION_MICRO;
	public const int VERSION_MINOR;
	public const string VERSION_STRING;
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_background_new (ushort red, ushort green, ushort blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_fallback_new (bool enable_fallback);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_family_new (string family);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_foreground_new (ushort red, ushort green, ushort blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_gravity_hint_new (Pango.GravityHint hint);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_gravity_new (Pango.Gravity gravity);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_letter_spacing_new (int letter_spacing);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_rise_new (int rise);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_scale_new (double scale_factor);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_stretch_new (Pango.Stretch stretch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_strikethrough_color_new (ushort red, ushort green, ushort blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_strikethrough_new (bool strikethrough);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_style_new (Pango.Style style);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.AttrType attr_type_register (string name);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_underline_color_new (ushort red, ushort green, ushort blue);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_underline_new (Pango.Underline underline);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_variant_new (Pango.Variant variant);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Attribute attr_weight_new (Pango.Weight weight);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void @break (string text, int length, Pango.Analysis analysis, Pango.LogAttr[] attrs, int attrs_len);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void extents_to_pixels (ref Pango.Rectangle inclusive, ref Pango.Rectangle nearest);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Direction find_base_dir (string text, int length);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void find_paragraph_boundary (string text, int length, int paragraph_delimiter_index, int next_paragraph_start);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void get_log_attrs (string text, int length, int level, Pango.Language language, Pango.LogAttr[] log_attrs, int attrs_len);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Gravity gravity_get_for_matrix (Pango.Matrix matrix);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Gravity gravity_get_for_script (Pango.Script script, Pango.Gravity base_gravity, Pango.GravityHint hint);
	[CCode (cheader_filename = "pango/pango.h")]
	public static double gravity_to_rotation (Pango.Gravity gravity);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool is_zero_width (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak GLib.List itemize (Pango.Context context, string text, int start_index, int length, Pango.AttrList attrs, Pango.AttrIterator cached_iter);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak GLib.List itemize_with_base_dir (Pango.Context context, Pango.Direction base_dir, string text, int start_index, int length, Pango.AttrList attrs, Pango.AttrIterator cached_iter);
	[CCode (cheader_filename = "pango/pango.h")]
	public static uchar log2vis_get_embedding_levels (string text, int length, Pango.Direction pbase_dir);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_enum (GLib.Type type, string str, int value, bool warn, out weak string possible_values);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_markup (string markup_text, int length, unichar accel_marker, out weak Pango.AttrList attr_list, out weak string text, unichar accel_char) throws GLib.Error;
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_stretch (string str, Pango.Stretch stretch, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_style (string str, Pango.Style style, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_variant (string str, Pango.Variant variant, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool parse_weight (string str, Pango.Weight weight, bool warn);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void quantize_line_geometry (int thickness, int position);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int read_line (GLib.FileStream stream, GLib.StringBuilder str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak GLib.List reorder_items (GLib.List logical_items);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_int (out weak string pos, int @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_string (out weak string pos, GLib.StringBuilder @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool scan_word (out weak string pos, GLib.StringBuilder @out);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Script script_for_unichar (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak Pango.Language script_get_sample_language (Pango.Script script);
	[CCode (cheader_filename = "pango/pango.h")]
	public static void shape (string text, int length, Pango.Analysis analysis, Pango.GlyphString glyphs);
	[CCode (cheader_filename = "pango/pango.h")]
	public static bool skip_space (out weak string pos);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak string split_file_list (string str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak string trim_string (string str);
	[CCode (cheader_filename = "pango/pango.h")]
	public static Pango.Direction unichar_direction (unichar ch);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int units_from_double (double d);
	[CCode (cheader_filename = "pango/pango.h")]
	public static double units_to_double (int i);
	[CCode (cheader_filename = "pango/pango.h")]
	public static int version ();
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak string version_check (int required_major, int required_minor, int required_micro);
	[CCode (cheader_filename = "pango/pango.h")]
	public static weak string version_string ();
}
