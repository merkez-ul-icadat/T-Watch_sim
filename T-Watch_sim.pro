TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

unix:{
    macx:{
    # macos only
        LIBS += -F/Library/Frameworks/ -framework SDL2
        INCLUDEPATH += /Library/Frameworks/SDL2.framework/Headers
    }
    else:{
    #linux/unix only
        LIBS += -L/usr/local/lib -lSDL2
    }
}
win32:{
    #windows only
    LIBS += -L$$PWD/SDL2_win32/lib/ -lmingw32 -lSDL2main -lSDL2

    INCLUDEPATH += $$PWD/SDL2_win32
    DEPENDPATH += $$PWD/SDL2_win32
}

HEADERS += \
    lv_conf.h \
    lv_drivers/display/R61581.h \
    lv_drivers/display/SHARP_MIP.h \
    lv_drivers/display/SSD1963.h \
    lv_drivers/display/ST7565.h \
    lv_drivers/display/UC1610.h \
    lv_drivers/display/fbdev.h \
    lv_drivers/display/monitor.h \
    lv_drivers/indev/AD_touch.h \
    lv_drivers/indev/FT5406EE8.h \
    lv_drivers/indev/XPT2046.h \
    lv_drivers/indev/evdev.h \
    lv_drivers/indev/keyboard.h \
    lv_drivers/indev/libinput_drv.h \
    lv_drivers/indev/mouse.h \
    lv_drivers/indev/mousewheel.h \
    lv_drivers/lv_drv_conf_templ.h \
    lv_drivers/win_drv.h \
    lv_drv_conf.h \
    lv_ex_conf.h \
    lv_examples/lv_apps/demo/demo.h \
    lvgl/lv_conf_template.h \
    lvgl/lvgl.h \
    lvgl/porting/lv_port_disp_template.h \
    lvgl/porting/lv_port_fs_template.h \
    lvgl/porting/lv_port_indev_template.h \
    lvgl/src/lv_conf_checker.h \
    lvgl/src/lv_core/lv_debug.h \
    lvgl/src/lv_core/lv_disp.h \
    lvgl/src/lv_core/lv_group.h \
    lvgl/src/lv_core/lv_indev.h \
    lvgl/src/lv_core/lv_obj.h \
    lvgl/src/lv_core/lv_refr.h \
    lvgl/src/lv_core/lv_style.h \
    lvgl/src/lv_draw/lv_draw.h \
    lvgl/src/lv_draw/lv_draw_arc.h \
    lvgl/src/lv_draw/lv_draw_basic.h \
    lvgl/src/lv_draw/lv_draw_img.h \
    lvgl/src/lv_draw/lv_draw_label.h \
    lvgl/src/lv_draw/lv_draw_line.h \
    lvgl/src/lv_draw/lv_draw_rect.h \
    lvgl/src/lv_draw/lv_draw_triangle.h \
    lvgl/src/lv_draw/lv_img_cache.h \
    lvgl/src/lv_draw/lv_img_decoder.h \
    lvgl/src/lv_font/lv_font.h \
    lvgl/src/lv_font/lv_font_fmt_txt.h \
    lvgl/src/lv_font/lv_symbol_def.h \
    lvgl/src/lv_hal/lv_hal.h \
    lvgl/src/lv_hal/lv_hal_disp.h \
    lvgl/src/lv_hal/lv_hal_indev.h \
    lvgl/src/lv_hal/lv_hal_tick.h \
    lvgl/src/lv_misc/lv_anim.h \
    lvgl/src/lv_misc/lv_area.h \
    lvgl/src/lv_misc/lv_async.h \
    lvgl/src/lv_misc/lv_bidi.h \
    lvgl/src/lv_misc/lv_circ.h \
    lvgl/src/lv_misc/lv_color.h \
    lvgl/src/lv_misc/lv_fs.h \
    lvgl/src/lv_misc/lv_gc.h \
    lvgl/src/lv_misc/lv_ll.h \
    lvgl/src/lv_misc/lv_log.h \
    lvgl/src/lv_misc/lv_math.h \
    lvgl/src/lv_misc/lv_mem.h \
    lvgl/src/lv_misc/lv_printf.h \
    lvgl/src/lv_misc/lv_task.h \
    lvgl/src/lv_misc/lv_templ.h \
    lvgl/src/lv_misc/lv_txt.h \
    lvgl/src/lv_misc/lv_types.h \
    lvgl/src/lv_misc/lv_utils.h \
    lvgl/src/lv_objx/lv_arc.h \
    lvgl/src/lv_objx/lv_bar.h \
    lvgl/src/lv_objx/lv_btn.h \
    lvgl/src/lv_objx/lv_btnm.h \
    lvgl/src/lv_objx/lv_calendar.h \
    lvgl/src/lv_objx/lv_canvas.h \
    lvgl/src/lv_objx/lv_cb.h \
    lvgl/src/lv_objx/lv_chart.h \
    lvgl/src/lv_objx/lv_cont.h \
    lvgl/src/lv_objx/lv_cpicker.h \
    lvgl/src/lv_objx/lv_ddlist.h \
    lvgl/src/lv_objx/lv_gauge.h \
    lvgl/src/lv_objx/lv_img.h \
    lvgl/src/lv_objx/lv_imgbtn.h \
    lvgl/src/lv_objx/lv_kb.h \
    lvgl/src/lv_objx/lv_label.h \
    lvgl/src/lv_objx/lv_led.h \
    lvgl/src/lv_objx/lv_line.h \
    lvgl/src/lv_objx/lv_list.h \
    lvgl/src/lv_objx/lv_lmeter.h \
    lvgl/src/lv_objx/lv_mbox.h \
    lvgl/src/lv_objx/lv_objx_templ.h \
    lvgl/src/lv_objx/lv_page.h \
    lvgl/src/lv_objx/lv_preload.h \
    lvgl/src/lv_objx/lv_roller.h \
    lvgl/src/lv_objx/lv_slider.h \
    lvgl/src/lv_objx/lv_spinbox.h \
    lvgl/src/lv_objx/lv_sw.h \
    lvgl/src/lv_objx/lv_ta.h \
    lvgl/src/lv_objx/lv_table.h \
    lvgl/src/lv_objx/lv_tabview.h \
    lvgl/src/lv_objx/lv_tileview.h \
    lvgl/src/lv_objx/lv_win.h \
    lvgl/src/lv_themes/lv_theme.h \
    lvgl/src/lv_themes/lv_theme_alien.h \
    lvgl/src/lv_themes/lv_theme_default.h \
    lvgl/src/lv_themes/lv_theme_material.h \
    lvgl/src/lv_themes/lv_theme_mono.h \
    lvgl/src/lv_themes/lv_theme_nemo.h \
    lvgl/src/lv_themes/lv_theme_night.h \
    lvgl/src/lv_themes/lv_theme_templ.h \
    lvgl/src/lv_themes/lv_theme_zen.h \
    lvgl/src/lv_version.h

SOURCES += \
    lv_drivers/display/R61581.c \
    lv_drivers/display/SHARP_MIP.c \
    lv_drivers/display/SSD1963.c \
    lv_drivers/display/ST7565.c \
    lv_drivers/display/UC1610.c \
    lv_drivers/display/fbdev.c \
    lv_drivers/display/monitor.c \
    lv_drivers/indev/AD_touch.c \
    lv_drivers/indev/FT5406EE8.c \
    lv_drivers/indev/XPT2046.c \
    lv_drivers/indev/evdev.c \
    lv_drivers/indev/keyboard.c \
    lv_drivers/indev/libinput.c \
    lv_drivers/indev/mouse.c \
    lv_drivers/indev/mousewheel.c \
    lv_drivers/win_drv.c \
    lv_examples/lv_apps/demo/demo.c \
    lv_examples/lv_apps/demo/img_bubble_pattern.c \
    lvgl/porting/lv_port_disp_template.c \
    lvgl/porting/lv_port_fs_template.c \
    lvgl/porting/lv_port_indev_template.c \
    lvgl/src/lv_core/lv_debug.c \
    lvgl/src/lv_core/lv_disp.c \
    lvgl/src/lv_core/lv_group.c \
    lvgl/src/lv_core/lv_indev.c \
    lvgl/src/lv_core/lv_obj.c \
    lvgl/src/lv_core/lv_refr.c \
    lvgl/src/lv_core/lv_style.c \
    lvgl/src/lv_draw/lv_draw.c \
    lvgl/src/lv_draw/lv_draw_arc.c \
    lvgl/src/lv_draw/lv_draw_basic.c \
    lvgl/src/lv_draw/lv_draw_img.c \
    lvgl/src/lv_draw/lv_draw_label.c \
    lvgl/src/lv_draw/lv_draw_line.c \
    lvgl/src/lv_draw/lv_draw_rect.c \
    lvgl/src/lv_draw/lv_draw_triangle.c \
    lvgl/src/lv_draw/lv_img_cache.c \
    lvgl/src/lv_draw/lv_img_decoder.c \
    lvgl/src/lv_font/lv_font.c \
    lvgl/src/lv_font/lv_font_fmt_txt.c \
    lvgl/src/lv_font/lv_font_roboto_12.c \
    lvgl/src/lv_font/lv_font_roboto_12_subpx.c \
    lvgl/src/lv_font/lv_font_roboto_16.c \
    lvgl/src/lv_font/lv_font_roboto_22.c \
    lvgl/src/lv_font/lv_font_roboto_28.c \
    lvgl/src/lv_font/lv_font_roboto_28_compressed.c \
    lvgl/src/lv_font/lv_font_unscii_8.c \
    lvgl/src/lv_hal/lv_hal_disp.c \
    lvgl/src/lv_hal/lv_hal_indev.c \
    lvgl/src/lv_hal/lv_hal_tick.c \
    lvgl/src/lv_misc/lv_anim.c \
    lvgl/src/lv_misc/lv_area.c \
    lvgl/src/lv_misc/lv_async.c \
    lvgl/src/lv_misc/lv_bidi.c \
    lvgl/src/lv_misc/lv_circ.c \
    lvgl/src/lv_misc/lv_color.c \
    lvgl/src/lv_misc/lv_fs.c \
    lvgl/src/lv_misc/lv_gc.c \
    lvgl/src/lv_misc/lv_ll.c \
    lvgl/src/lv_misc/lv_log.c \
    lvgl/src/lv_misc/lv_math.c \
    lvgl/src/lv_misc/lv_mem.c \
    lvgl/src/lv_misc/lv_printf.c \
    lvgl/src/lv_misc/lv_task.c \
    lvgl/src/lv_misc/lv_templ.c \
    lvgl/src/lv_misc/lv_txt.c \
    lvgl/src/lv_misc/lv_utils.c \
    lvgl/src/lv_objx/lv_arc.c \
    lvgl/src/lv_objx/lv_bar.c \
    lvgl/src/lv_objx/lv_btn.c \
    lvgl/src/lv_objx/lv_btnm.c \
    lvgl/src/lv_objx/lv_calendar.c \
    lvgl/src/lv_objx/lv_canvas.c \
    lvgl/src/lv_objx/lv_cb.c \
    lvgl/src/lv_objx/lv_chart.c \
    lvgl/src/lv_objx/lv_cont.c \
    lvgl/src/lv_objx/lv_cpicker.c \
    lvgl/src/lv_objx/lv_ddlist.c \
    lvgl/src/lv_objx/lv_gauge.c \
    lvgl/src/lv_objx/lv_img.c \
    lvgl/src/lv_objx/lv_imgbtn.c \
    lvgl/src/lv_objx/lv_kb.c \
    lvgl/src/lv_objx/lv_label.c \
    lvgl/src/lv_objx/lv_led.c \
    lvgl/src/lv_objx/lv_line.c \
    lvgl/src/lv_objx/lv_list.c \
    lvgl/src/lv_objx/lv_lmeter.c \
    lvgl/src/lv_objx/lv_mbox.c \
    lvgl/src/lv_objx/lv_objx_templ.c \
    lvgl/src/lv_objx/lv_page.c \
    lvgl/src/lv_objx/lv_preload.c \
    lvgl/src/lv_objx/lv_roller.c \
    lvgl/src/lv_objx/lv_slider.c \
    lvgl/src/lv_objx/lv_spinbox.c \
    lvgl/src/lv_objx/lv_sw.c \
    lvgl/src/lv_objx/lv_ta.c \
    lvgl/src/lv_objx/lv_table.c \
    lvgl/src/lv_objx/lv_tabview.c \
    lvgl/src/lv_objx/lv_tileview.c \
    lvgl/src/lv_objx/lv_win.c \
    lvgl/src/lv_themes/lv_theme.c \
    lvgl/src/lv_themes/lv_theme_alien.c \
    lvgl/src/lv_themes/lv_theme_default.c \
    lvgl/src/lv_themes/lv_theme_material.c \
    lvgl/src/lv_themes/lv_theme_mono.c \
    lvgl/src/lv_themes/lv_theme_nemo.c \
    lvgl/src/lv_themes/lv_theme_night.c \
    lvgl/src/lv_themes/lv_theme_templ.c \
    lvgl/src/lv_themes/lv_theme_zen.c \
    main.c \
    mouse_cursor_icon.c
