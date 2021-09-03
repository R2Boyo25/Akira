/*
 * Copyright (c) 2019-2020 Alecaddd (https://alecaddd.com)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authored by: Giacomo "giacomoalbe" Alberini <giacomoalbe@gmail.com>
 * Authored by: Alessandro "alecaddd" Castellani <castellani.ale@gmail.com>
 */

public class Akira.Services.EventBus : Object {
    // File signals.
    public signal void file_edited ();
    public signal void file_saved (string? file_name);
    public signal void update_recent_files_list ();

    // Layout signals.
    public signal void change_sensitivity (string type);
    public signal void request_widget_redraw ();
    public signal void change_theme ();
    public signal void toggle_presentation_mode ();

    // Canvas signals.
    public signal void coordinate_change (double x, double y);
    public signal void insert_item (string type);
    public signal void item_inserted ();
    //public signal void move_item_from_canvas (Gdk.KeyEvent event);
    public signal void request_escape ();
    public signal void set_focus_on_canvas ();
    public signal void update_nob_size ();
    public signal void canvas_notification (string message);
    public signal void hide_select_effect ();
    public signal void show_select_effect ();
    public signal void toggle_pixel_grid ();
    public signal void update_pixel_grid ();
    public signal void update_snaps_color ();
    public signal void update_snap_decorators ();
    public signal void zoom_changed (double new_zoom);

    // Canvas triggers.
    public signal void adjust_zoom (double zoom, bool absolute, Geometry.Point? reference);

    // Options panel signals.
    public signal void align_items (string align_action);
    public signal void init_state_coords ();
    public signal void reset_state_coords ();
    public signal void update_state_coords (double moved_x, double moved_y);
    public signal void item_value_changed ();

    // Item signals.
    public signal void change_z_selected (bool raise, bool total);
    public signal void flip_item (bool vertical = false);
    public signal void z_selected_changed ();
    public signal void detect_artboard_change ();
    public signal void detect_image_size_change ();

    // Lib signals
    public signal void selection_modified ();
    public signal void request_copy ();
    public signal void request_paste ();
    public signal void delete_selected_items ();

    // Others.
    public signal void disconnect_typing_accel ();
    public signal void connect_typing_accel ();

    // Export signals.
    public signal void export_preview (string message);
    public signal void preview_completed ();
    public signal void exporting (string message);
    public signal void export_completed ();
}
