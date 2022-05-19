/* widgets/colour-switcher.vala
 *
 * Copyright 2022 Jamie Murphy
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace WindowPainter {
    [GtkTemplate (ui = "/dev/jamiethalacker/window_painter/colour-switcher.ui")]
    public class ColourSwitcher : Gtk.Box {
        [GtkCallback]
        public void button_click (Gtk.Button source) {
            for (var i = 0; i < 6; i++) {
                if (source.get_style_context ().has_class (Colours.get_for_pos (i).get_style_class ())) {
                    Signals.get_default ().do_button_click (Colours.get_for_pos (i));
                }
            }
        }
        
        public ColourSwitcher () {
            Object ();
        }
    }
}
