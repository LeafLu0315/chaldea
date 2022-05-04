// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m1(curVersion, newVersion, releaseNote) =>
      "Current version: ${curVersion}\nLatest version: ${newVersion}\nRelease Note:\n${releaseNote}";

  static String m2(url) =>
      "Chaldea - A cross-platform utility for Fate/GO. Supporting game data review, servant/event/item planning, master mission planning, summon simulator and so on.\n\nFor details: \n${url}\n";

  static String m3(version) => "Required app version: ≥ ${version}";

  static String m4(n) => "Max ${n} lottery";

  static String m5(n) => "Grail to crystal: ${n}";

  static String m6(filename, hash, localHash) =>
      "File ${filename} not found or mismatched hash: ${hash} - ${localHash}";

  static String m7(error) => "Import failed. Error:\n${error}";

  static String m8(name) => "${name} already exist";

  static String m9(site) => "Jump to ${site}";

  static String m10(shown, total) => "${shown} shown (total ${total})";

  static String m11(shown, ignore, total) =>
      "${shown} shown, ${ignore} ignored (total ${total})";

  static String m12(first) => "${Intl.select(first, {
            'true': 'Already the first one',
            'false': 'Already the last one',
            'other': 'No more',
          })}";

  static String m13(n) => "Section ${n}";

  static String m14(n) => "Reset Plan ${n}(All)";

  static String m15(n) => "Reset Plan ${n}(Shown)";

  static String m16(battles, ap) => "Total ${battles} battles, ${ap} AP";

  static String m17(n) => "Profile ${n}";

  static String m0(a, b) => "${a} ${b}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_app": MessageLookupByLibrary.simpleMessage("About"),
        "about_app_declaration_text": MessageLookupByLibrary.simpleMessage(
            "The data used in this application comes from game Fate/GO and the following websites. The copyright of the original texts, pictures and voices of game belongs to TYPE MOON/FGO PROJECT.\n\nThe design of program is based on the WeChat mini program \"Material Programe\" and the iOS application \"Guda\".\n"),
        "about_data_source":
            MessageLookupByLibrary.simpleMessage("Data source"),
        "about_data_source_footer": MessageLookupByLibrary.simpleMessage(
            "Please inform us if there is unmarked source or infringement."),
        "about_feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "about_update_app_detail": m1,
        "account_title": MessageLookupByLibrary.simpleMessage("Account"),
        "active_skill": MessageLookupByLibrary.simpleMessage("Active Skill"),
        "active_skill_short": MessageLookupByLibrary.simpleMessage("Active"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "add_feedback_details_warning":
            MessageLookupByLibrary.simpleMessage("Please add feedback details"),
        "add_to_blacklist":
            MessageLookupByLibrary.simpleMessage("Add to blacklist"),
        "ap": MessageLookupByLibrary.simpleMessage("AP"),
        "ap_efficiency": MessageLookupByLibrary.simpleMessage("AP rate"),
        "app_data_folder": MessageLookupByLibrary.simpleMessage("Data Folder"),
        "app_data_use_external_storage": MessageLookupByLibrary.simpleMessage(
            "Use External Storage(SD card)"),
        "append_skill": MessageLookupByLibrary.simpleMessage("Append Skill"),
        "append_skill_short": MessageLookupByLibrary.simpleMessage("Append"),
        "ascension": MessageLookupByLibrary.simpleMessage("Ascension"),
        "ascension_short": MessageLookupByLibrary.simpleMessage("Ascen"),
        "ascension_up": MessageLookupByLibrary.simpleMessage("Ascension"),
        "attach_from_files": MessageLookupByLibrary.simpleMessage("From Files"),
        "attach_from_photos":
            MessageLookupByLibrary.simpleMessage("From Photos"),
        "attach_help": MessageLookupByLibrary.simpleMessage(
            "If you have trouble picking images, use files instead"),
        "attachment": MessageLookupByLibrary.simpleMessage("Attachment"),
        "auto_reset": MessageLookupByLibrary.simpleMessage("Auto reset"),
        "auto_update": MessageLookupByLibrary.simpleMessage("Auto Update"),
        "backup": MessageLookupByLibrary.simpleMessage("Backup"),
        "backup_failed": MessageLookupByLibrary.simpleMessage("Backup failed"),
        "backup_history":
            MessageLookupByLibrary.simpleMessage("Backup History"),
        "blacklist": MessageLookupByLibrary.simpleMessage("Blacklist"),
        "bond": MessageLookupByLibrary.simpleMessage("Bond"),
        "bond_craft": MessageLookupByLibrary.simpleMessage("Bond Craft"),
        "bond_eff": MessageLookupByLibrary.simpleMessage("Bond Eff"),
        "bootstrap_page_title":
            MessageLookupByLibrary.simpleMessage("Bootstrap Page"),
        "bronze": MessageLookupByLibrary.simpleMessage("Bronze"),
        "cache_icons": MessageLookupByLibrary.simpleMessage("Cache Icons"),
        "calc_weight": MessageLookupByLibrary.simpleMessage("Weight"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "card_asset_chara_figure":
            MessageLookupByLibrary.simpleMessage("Figure"),
        "card_asset_command":
            MessageLookupByLibrary.simpleMessage("Command Card"),
        "card_asset_face": MessageLookupByLibrary.simpleMessage("Thumbnail"),
        "card_asset_narrow_figure":
            MessageLookupByLibrary.simpleMessage("Formation"),
        "card_asset_status":
            MessageLookupByLibrary.simpleMessage("Status Icon"),
        "card_description": MessageLookupByLibrary.simpleMessage("Description"),
        "card_info": MessageLookupByLibrary.simpleMessage("Info"),
        "card_name": MessageLookupByLibrary.simpleMessage("Card Name"),
        "carousel_setting":
            MessageLookupByLibrary.simpleMessage("Carousel Setting"),
        "ce_status": MessageLookupByLibrary.simpleMessage("Status"),
        "ce_status_met": MessageLookupByLibrary.simpleMessage("Met"),
        "ce_status_not_met": MessageLookupByLibrary.simpleMessage("Not Met"),
        "ce_status_owned": MessageLookupByLibrary.simpleMessage("Owned"),
        "ce_type_mix_hp_atk": MessageLookupByLibrary.simpleMessage("MIX"),
        "ce_type_none_hp_atk": MessageLookupByLibrary.simpleMessage("ATK"),
        "ce_type_pure_atk": MessageLookupByLibrary.simpleMessage("ATK"),
        "ce_type_pure_hp": MessageLookupByLibrary.simpleMessage("HP"),
        "chaldea_account":
            MessageLookupByLibrary.simpleMessage("Chaldea Account"),
        "chaldea_account_system_hint": MessageLookupByLibrary.simpleMessage(
            "A simple account system for userdata backup to server and multi-device synchronization\n  NO security guarantee, PLEASE DON\'T set frequently used passwords!!!\n  No need to register if you do not need these two features."),
        "chaldea_backup":
            MessageLookupByLibrary.simpleMessage("Chaldea App Backup"),
        "chaldea_server": MessageLookupByLibrary.simpleMessage("Server"),
        "chaldea_server_cn": MessageLookupByLibrary.simpleMessage("CN"),
        "chaldea_server_global": MessageLookupByLibrary.simpleMessage("Global"),
        "chaldea_server_hint": MessageLookupByLibrary.simpleMessage(
            "Used for game data and screenshots recognizer"),
        "chaldea_share_msg": m2,
        "change_log": MessageLookupByLibrary.simpleMessage("Change Log"),
        "characters_in_card":
            MessageLookupByLibrary.simpleMessage("Characters"),
        "check_update": MessageLookupByLibrary.simpleMessage("Check update"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "clear_cache": MessageLookupByLibrary.simpleMessage("Clear cache"),
        "clear_cache_finish":
            MessageLookupByLibrary.simpleMessage("Cache cleared"),
        "clear_cache_hint": MessageLookupByLibrary.simpleMessage(
            "Including illustrations, voices"),
        "clear_data": MessageLookupByLibrary.simpleMessage("Clear Data"),
        "coin_summon_num": MessageLookupByLibrary.simpleMessage("Summon Coins"),
        "command_code": MessageLookupByLibrary.simpleMessage("Command Code"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "consumed": MessageLookupByLibrary.simpleMessage("Consumed"),
        "contact_information_not_filled": MessageLookupByLibrary.simpleMessage(
            "Contact information is not filled in"),
        "contact_information_not_filled_warning":
            MessageLookupByLibrary.simpleMessage(
                "The developer will not be able to respond to your feedback"),
        "copied": MessageLookupByLibrary.simpleMessage("Copied"),
        "copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "copy_plan_menu":
            MessageLookupByLibrary.simpleMessage("Copy Plan from..."),
        "costume": MessageLookupByLibrary.simpleMessage("Costume"),
        "costume_unlock":
            MessageLookupByLibrary.simpleMessage("Costume Unlock"),
        "counts": MessageLookupByLibrary.simpleMessage("Counts"),
        "craft_essence": MessageLookupByLibrary.simpleMessage("Craft Essence"),
        "create_account_textfield_helper": MessageLookupByLibrary.simpleMessage(
            "You can add more accounts later in Settings"),
        "create_duplicated_svt":
            MessageLookupByLibrary.simpleMessage("Create duplicated"),
        "cur_account": MessageLookupByLibrary.simpleMessage("Current Account"),
        "current_": MessageLookupByLibrary.simpleMessage("Current"),
        "current_version":
            MessageLookupByLibrary.simpleMessage("Current Version"),
        "custom_mission":
            MessageLookupByLibrary.simpleMessage("Custom Mission"),
        "custom_mission_nothing_hint": MessageLookupByLibrary.simpleMessage(
            "No mission, click + to add mission"),
        "custom_mission_source_mission":
            MessageLookupByLibrary.simpleMessage("Source Mission"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("Dark mode"),
        "dark_mode_dark": MessageLookupByLibrary.simpleMessage("Dark"),
        "dark_mode_light": MessageLookupByLibrary.simpleMessage("Light"),
        "dark_mode_system": MessageLookupByLibrary.simpleMessage("System"),
        "database": MessageLookupByLibrary.simpleMessage("Database"),
        "database_not_downloaded": MessageLookupByLibrary.simpleMessage(
            "Database is not downloaded, still continue?"),
        "dataset_version":
            MessageLookupByLibrary.simpleMessage("Dataset version"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "debug": MessageLookupByLibrary.simpleMessage("Debug"),
        "debug_fab": MessageLookupByLibrary.simpleMessage("Debug FAB"),
        "debug_menu": MessageLookupByLibrary.simpleMessage("Debug Menu"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "demands": MessageLookupByLibrary.simpleMessage("Demands"),
        "display_setting":
            MessageLookupByLibrary.simpleMessage("Display Settings"),
        "done": MessageLookupByLibrary.simpleMessage("DONE"),
        "download": MessageLookupByLibrary.simpleMessage("Download"),
        "download_latest_gamedata_hint": MessageLookupByLibrary.simpleMessage(
            "To ensure compatibility, please upgrade to the latest APP version before updating"),
        "download_source":
            MessageLookupByLibrary.simpleMessage("Download source"),
        "download_source_hint": MessageLookupByLibrary.simpleMessage(
            "CN endpoint for China mainland"),
        "downloaded": MessageLookupByLibrary.simpleMessage("Downloaded"),
        "downloading": MessageLookupByLibrary.simpleMessage("Downloading"),
        "drop_calc_empty_hint":
            MessageLookupByLibrary.simpleMessage("Click + to add items"),
        "drop_calc_min_ap": MessageLookupByLibrary.simpleMessage("Min AP"),
        "drop_calc_solve": MessageLookupByLibrary.simpleMessage("Solve"),
        "drop_rate": MessageLookupByLibrary.simpleMessage("Drop rate"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "effect_scope": MessageLookupByLibrary.simpleMessage("Effect Scope"),
        "effect_search": MessageLookupByLibrary.simpleMessage("Buff Search"),
        "effect_target": MessageLookupByLibrary.simpleMessage("Effect Target"),
        "effect_type": MessageLookupByLibrary.simpleMessage("Effect Type"),
        "efficiency": MessageLookupByLibrary.simpleMessage("Efficiency"),
        "efficiency_type": MessageLookupByLibrary.simpleMessage("Efficient"),
        "efficiency_type_ap": MessageLookupByLibrary.simpleMessage("20AP Rate"),
        "efficiency_type_drop":
            MessageLookupByLibrary.simpleMessage("Drop Rate"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enemy_list": MessageLookupByLibrary.simpleMessage("Enemies"),
        "enhance": MessageLookupByLibrary.simpleMessage("Enhance"),
        "enhance_warning": MessageLookupByLibrary.simpleMessage(
            "The following items will be consumed for enhancement"),
        "error_no_internet":
            MessageLookupByLibrary.simpleMessage("No internet"),
        "error_no_network": MessageLookupByLibrary.simpleMessage("No network"),
        "error_no_version_data_found":
            MessageLookupByLibrary.simpleMessage("No version data found"),
        "error_required_app_version": m3,
        "event_bonus": MessageLookupByLibrary.simpleMessage("Bonus"),
        "event_collect_item_confirm": MessageLookupByLibrary.simpleMessage(
            "All items will be added to bag and remove the event out of plan"),
        "event_collect_items":
            MessageLookupByLibrary.simpleMessage("Collect Items"),
        "event_item_extra":
            MessageLookupByLibrary.simpleMessage("Extra Obtains"),
        "event_lottery": MessageLookupByLibrary.simpleMessage("Lottery"),
        "event_lottery_limit_hint": m4,
        "event_lottery_limited":
            MessageLookupByLibrary.simpleMessage("Limited lottery"),
        "event_lottery_unit": MessageLookupByLibrary.simpleMessage("Lottery"),
        "event_lottery_unlimited":
            MessageLookupByLibrary.simpleMessage("Unlimited lottery"),
        "event_not_planned":
            MessageLookupByLibrary.simpleMessage("Event not planned"),
        "event_point_reward": MessageLookupByLibrary.simpleMessage("Points"),
        "event_progress": MessageLookupByLibrary.simpleMessage("Progress"),
        "event_quest": MessageLookupByLibrary.simpleMessage("Event Quests"),
        "event_rerun_replace_grail": m5,
        "event_shop": MessageLookupByLibrary.simpleMessage("Shops"),
        "event_title": MessageLookupByLibrary.simpleMessage("Event"),
        "event_tower": MessageLookupByLibrary.simpleMessage("Tower"),
        "event_treasure_box":
            MessageLookupByLibrary.simpleMessage("Treasure Box"),
        "exchange_ticket":
            MessageLookupByLibrary.simpleMessage("Exchange Ticket"),
        "exchange_ticket_short": MessageLookupByLibrary.simpleMessage("Ticket"),
        "exp_card_plan_lv": MessageLookupByLibrary.simpleMessage("Levels"),
        "exp_card_same_class":
            MessageLookupByLibrary.simpleMessage("Same Class"),
        "exp_card_title": MessageLookupByLibrary.simpleMessage("Exp Card"),
        "failed": MessageLookupByLibrary.simpleMessage("Failed"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "favorite": MessageLookupByLibrary.simpleMessage("Favorite"),
        "feedback_add_attachments":
            MessageLookupByLibrary.simpleMessage("e.g. screenshots, files."),
        "feedback_contact":
            MessageLookupByLibrary.simpleMessage("Contact information"),
        "feedback_content_hint":
            MessageLookupByLibrary.simpleMessage("Feedback or Suggestion"),
        "feedback_form_alert": MessageLookupByLibrary.simpleMessage(
            "Feedback form is not empty, still exist?"),
        "feedback_info": MessageLookupByLibrary.simpleMessage(
            "Please check <**FAQ**> first before sending feedback. And following detail is desired:\n- How to reproduce, expected behaviour\n- App/dataset version, device system and version\n- Attach screenshots and logs\n- It\'s better to provide contact info (e.g. Email)"),
        "feedback_send": MessageLookupByLibrary.simpleMessage("Send"),
        "feedback_subject": MessageLookupByLibrary.simpleMessage("Subject"),
        "ffo_background": MessageLookupByLibrary.simpleMessage("Background"),
        "ffo_body": MessageLookupByLibrary.simpleMessage("Body"),
        "ffo_crop": MessageLookupByLibrary.simpleMessage("Crop"),
        "ffo_head": MessageLookupByLibrary.simpleMessage("Head"),
        "ffo_missing_data_hint": MessageLookupByLibrary.simpleMessage(
            "Please download or import FFO data first↗"),
        "ffo_same_svt": MessageLookupByLibrary.simpleMessage("Same Servant"),
        "fgo_domus_aurea": MessageLookupByLibrary.simpleMessage("Domus Aurea"),
        "file_not_found_or_mismatched_hash": m6,
        "filename": MessageLookupByLibrary.simpleMessage("filename"),
        "fill_email_warning": MessageLookupByLibrary.simpleMessage(
            "Please fill in email address. Otherwise NO reply."),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "filter_atk_hp_type": MessageLookupByLibrary.simpleMessage("Type"),
        "filter_attribute": MessageLookupByLibrary.simpleMessage("Attribute"),
        "filter_category": MessageLookupByLibrary.simpleMessage("Category"),
        "filter_effects": MessageLookupByLibrary.simpleMessage("Effects"),
        "filter_gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "filter_match_all": MessageLookupByLibrary.simpleMessage("Match All"),
        "filter_obtain": MessageLookupByLibrary.simpleMessage("Obtains"),
        "filter_plan_not_reached":
            MessageLookupByLibrary.simpleMessage("Plan-not-reach"),
        "filter_plan_reached":
            MessageLookupByLibrary.simpleMessage("Plan-reached"),
        "filter_revert": MessageLookupByLibrary.simpleMessage("Revert"),
        "filter_shown_type": MessageLookupByLibrary.simpleMessage("Display"),
        "filter_skill_lv": MessageLookupByLibrary.simpleMessage("Skills"),
        "filter_sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "filter_sort_class": MessageLookupByLibrary.simpleMessage("Class"),
        "filter_sort_number": MessageLookupByLibrary.simpleMessage("No"),
        "filter_sort_rarity": MessageLookupByLibrary.simpleMessage("Rarity"),
        "foukun": MessageLookupByLibrary.simpleMessage("Fou"),
        "free_progress": MessageLookupByLibrary.simpleMessage("Quest Limit"),
        "free_progress_newest":
            MessageLookupByLibrary.simpleMessage("Latest(JP)"),
        "free_quest": MessageLookupByLibrary.simpleMessage("Free Quest"),
        "free_quest_calculator":
            MessageLookupByLibrary.simpleMessage("Free Quest"),
        "free_quest_calculator_short":
            MessageLookupByLibrary.simpleMessage("Free Quest"),
        "gallery_tab_name": MessageLookupByLibrary.simpleMessage("Home"),
        "game_account": MessageLookupByLibrary.simpleMessage("Game Account"),
        "game_data_not_found": MessageLookupByLibrary.simpleMessage(
            "Game data not found, please download data first"),
        "game_drop": MessageLookupByLibrary.simpleMessage("Drop"),
        "game_experience": MessageLookupByLibrary.simpleMessage("Experience"),
        "game_kizuna": MessageLookupByLibrary.simpleMessage("Bond"),
        "game_rewards": MessageLookupByLibrary.simpleMessage("Rewards"),
        "game_server": MessageLookupByLibrary.simpleMessage("Game Server"),
        "gamedata": MessageLookupByLibrary.simpleMessage("Gamedata"),
        "general_default": MessageLookupByLibrary.simpleMessage("Default"),
        "general_others": MessageLookupByLibrary.simpleMessage("Others"),
        "general_special": MessageLookupByLibrary.simpleMessage("Special"),
        "general_type": MessageLookupByLibrary.simpleMessage("Type"),
        "gold": MessageLookupByLibrary.simpleMessage("Gold"),
        "grail": MessageLookupByLibrary.simpleMessage("Grail"),
        "grail_up": MessageLookupByLibrary.simpleMessage("Palingenesis"),
        "growth_curve": MessageLookupByLibrary.simpleMessage("Growth Curve"),
        "guda_female": MessageLookupByLibrary.simpleMessage("Gudako"),
        "guda_male": MessageLookupByLibrary.simpleMessage("Gudao"),
        "help": MessageLookupByLibrary.simpleMessage("Help"),
        "hide_outdated": MessageLookupByLibrary.simpleMessage("Hide Outdated"),
        "http_sniff_hint": MessageLookupByLibrary.simpleMessage(
            "(NA/JP/CN/TW)Capture the data when logging in"),
        "https_sniff": MessageLookupByLibrary.simpleMessage("Https Sniffing"),
        "hunting_quest": MessageLookupByLibrary.simpleMessage("Hunting Quests"),
        "icons": MessageLookupByLibrary.simpleMessage("Icons"),
        "ignore": MessageLookupByLibrary.simpleMessage("Ignore"),
        "illustration": MessageLookupByLibrary.simpleMessage("Illustration"),
        "illustrator": MessageLookupByLibrary.simpleMessage("Illustrator"),
        "import_active_skill_hint":
            MessageLookupByLibrary.simpleMessage("Enhance - Skill"),
        "import_active_skill_screenshots":
            MessageLookupByLibrary.simpleMessage("Active Skill Screenshots"),
        "import_append_skill_hint":
            MessageLookupByLibrary.simpleMessage("Enhance - Append Skill"),
        "import_append_skill_screenshots":
            MessageLookupByLibrary.simpleMessage("Append Skill Screenshots"),
        "import_backup": MessageLookupByLibrary.simpleMessage("Import Backup"),
        "import_data": MessageLookupByLibrary.simpleMessage("Import"),
        "import_data_error": m7,
        "import_data_success":
            MessageLookupByLibrary.simpleMessage("Import data successfully"),
        "import_from_clipboard":
            MessageLookupByLibrary.simpleMessage("From Clipboard"),
        "import_from_file": MessageLookupByLibrary.simpleMessage("From File"),
        "import_http_body_duplicated":
            MessageLookupByLibrary.simpleMessage("Duplicated"),
        "import_http_body_hint": MessageLookupByLibrary.simpleMessage(
            "Click import button to import decrypted HTTPS response"),
        "import_http_body_hint_hide": MessageLookupByLibrary.simpleMessage(
            "Click servant to hide/unhide"),
        "import_http_body_locked":
            MessageLookupByLibrary.simpleMessage("Locked Only"),
        "import_image": MessageLookupByLibrary.simpleMessage("Import Image"),
        "import_item_hint":
            MessageLookupByLibrary.simpleMessage("My Room - Item List"),
        "import_item_screenshots":
            MessageLookupByLibrary.simpleMessage("Items Screenshots"),
        "import_screenshot":
            MessageLookupByLibrary.simpleMessage("Import Screenshots"),
        "import_screenshot_hint": MessageLookupByLibrary.simpleMessage(
            "Only update recognized items"),
        "import_screenshot_update_items":
            MessageLookupByLibrary.simpleMessage("Update Items"),
        "import_source_file":
            MessageLookupByLibrary.simpleMessage("Import Source File"),
        "import_userdata_more":
            MessageLookupByLibrary.simpleMessage("More import methods"),
        "info_agility": MessageLookupByLibrary.simpleMessage("Agility"),
        "info_alignment": MessageLookupByLibrary.simpleMessage("Alignment"),
        "info_bond_points": MessageLookupByLibrary.simpleMessage("Bond Points"),
        "info_bond_points_single":
            MessageLookupByLibrary.simpleMessage("Point"),
        "info_bond_points_sum": MessageLookupByLibrary.simpleMessage("Sum"),
        "info_cards": MessageLookupByLibrary.simpleMessage("Cards"),
        "info_critical_rate":
            MessageLookupByLibrary.simpleMessage("Critical Rate"),
        "info_cv": MessageLookupByLibrary.simpleMessage("Voice Actor"),
        "info_death_rate": MessageLookupByLibrary.simpleMessage("Death Rate"),
        "info_endurance": MessageLookupByLibrary.simpleMessage("Endurance"),
        "info_gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "info_luck": MessageLookupByLibrary.simpleMessage("Luck"),
        "info_mana": MessageLookupByLibrary.simpleMessage("Mana"),
        "info_np": MessageLookupByLibrary.simpleMessage("NP"),
        "info_np_rate": MessageLookupByLibrary.simpleMessage("NP Rate"),
        "info_star_rate": MessageLookupByLibrary.simpleMessage("Star Rate"),
        "info_strength": MessageLookupByLibrary.simpleMessage("Strength"),
        "info_trait": MessageLookupByLibrary.simpleMessage("Traits"),
        "info_value": MessageLookupByLibrary.simpleMessage("Value"),
        "input_invalid_hint":
            MessageLookupByLibrary.simpleMessage("Invalid inputs"),
        "install": MessageLookupByLibrary.simpleMessage("Install"),
        "interlude": MessageLookupByLibrary.simpleMessage("Interlude"),
        "interlude_and_rankup":
            MessageLookupByLibrary.simpleMessage("Interlude & Rank Up"),
        "invalid_input": MessageLookupByLibrary.simpleMessage("Invalid input."),
        "invalid_startup_path":
            MessageLookupByLibrary.simpleMessage("Invalid startup path!"),
        "invalid_startup_path_info": MessageLookupByLibrary.simpleMessage(
            "Please, extract zip to non-system path then start the app. \"C:\\\", \"C:\\Program Files\" are not allowed."),
        "ios_app_path": MessageLookupByLibrary.simpleMessage(
            "\"Files\" app/On My iPhone/Chaldea"),
        "issues": MessageLookupByLibrary.simpleMessage("Issues"),
        "item": MessageLookupByLibrary.simpleMessage("Item"),
        "item_already_exist_hint": m8,
        "item_apple": MessageLookupByLibrary.simpleMessage("Apple"),
        "item_category_ascension":
            MessageLookupByLibrary.simpleMessage("Ascension Items"),
        "item_category_bronze":
            MessageLookupByLibrary.simpleMessage("Bronze Items"),
        "item_category_event_svt_ascension":
            MessageLookupByLibrary.simpleMessage("Event Item"),
        "item_category_gem": MessageLookupByLibrary.simpleMessage("Gem"),
        "item_category_gems":
            MessageLookupByLibrary.simpleMessage("Skill Items"),
        "item_category_gold":
            MessageLookupByLibrary.simpleMessage("Gold Items"),
        "item_category_magic_gem":
            MessageLookupByLibrary.simpleMessage("Magic Gem"),
        "item_category_monument":
            MessageLookupByLibrary.simpleMessage("Monument"),
        "item_category_others": MessageLookupByLibrary.simpleMessage("Others"),
        "item_category_piece": MessageLookupByLibrary.simpleMessage("Piece"),
        "item_category_secret_gem":
            MessageLookupByLibrary.simpleMessage("Secret Gem"),
        "item_category_silver":
            MessageLookupByLibrary.simpleMessage("Silver Items"),
        "item_category_special":
            MessageLookupByLibrary.simpleMessage("Special Items"),
        "item_category_usual": MessageLookupByLibrary.simpleMessage("Items"),
        "item_eff": MessageLookupByLibrary.simpleMessage("Item Eff"),
        "item_exceed_hint": MessageLookupByLibrary.simpleMessage(
            "Before planning, you can set exceeded num for items(Only used for free quest planning)"),
        "item_left": MessageLookupByLibrary.simpleMessage("Left"),
        "item_no_free_quests":
            MessageLookupByLibrary.simpleMessage("No Free Quests"),
        "item_only_show_lack":
            MessageLookupByLibrary.simpleMessage("Only show lacked"),
        "item_own": MessageLookupByLibrary.simpleMessage("Owned"),
        "item_screenshot":
            MessageLookupByLibrary.simpleMessage("Item Screenshot"),
        "item_stat_include_owned":
            MessageLookupByLibrary.simpleMessage("Include Owned"),
        "item_stat_sub_event":
            MessageLookupByLibrary.simpleMessage("Subtract Event"),
        "item_stat_sub_owned":
            MessageLookupByLibrary.simpleMessage("Subtract Owned"),
        "item_title": MessageLookupByLibrary.simpleMessage("Item"),
        "item_total_demand": MessageLookupByLibrary.simpleMessage("Total"),
        "join_beta": MessageLookupByLibrary.simpleMessage("Join Beta Program"),
        "jump_to": m9,
        "language": MessageLookupByLibrary.simpleMessage("English"),
        "language_en": MessageLookupByLibrary.simpleMessage("English"),
        "level": MessageLookupByLibrary.simpleMessage("Level"),
        "limited_event": MessageLookupByLibrary.simpleMessage("Limited Event"),
        "link": MessageLookupByLibrary.simpleMessage("link"),
        "list_count_shown_all": m10,
        "list_count_shown_hidden_all": m11,
        "list_end_hint": m12,
        "login_change_name":
            MessageLookupByLibrary.simpleMessage("Change Name"),
        "login_change_password":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "login_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "login_first_hint":
            MessageLookupByLibrary.simpleMessage("Please login first"),
        "login_forget_pwd":
            MessageLookupByLibrary.simpleMessage("Forget Password"),
        "login_login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "login_new_name": MessageLookupByLibrary.simpleMessage("New Name"),
        "login_new_password":
            MessageLookupByLibrary.simpleMessage("New Password"),
        "login_password": MessageLookupByLibrary.simpleMessage("Password"),
        "login_password_error": MessageLookupByLibrary.simpleMessage(
            "6-18 characters, at least one alphabet"),
        "login_password_error_same_as_old":
            MessageLookupByLibrary.simpleMessage(
                "Cannot be the same as the old password"),
        "login_signup": MessageLookupByLibrary.simpleMessage("Signup"),
        "login_state_not_login":
            MessageLookupByLibrary.simpleMessage("Not logged in"),
        "login_username": MessageLookupByLibrary.simpleMessage("Username"),
        "login_username_error": MessageLookupByLibrary.simpleMessage(
            "Can only contain letters and numbers, starting with a letter, no less than 4 digits"),
        "long_press_to_save_hint":
            MessageLookupByLibrary.simpleMessage("Long press to save"),
        "lottery_cost_per_roll":
            MessageLookupByLibrary.simpleMessage("Cost of 1 roll"),
        "lucky_bag": MessageLookupByLibrary.simpleMessage("Lucky Bag"),
        "lucky_bag_expectation":
            MessageLookupByLibrary.simpleMessage("Expectation"),
        "lucky_bag_expectation_short":
            MessageLookupByLibrary.simpleMessage("Exp."),
        "lucky_bag_rating": MessageLookupByLibrary.simpleMessage("Rating"),
        "lucky_bag_tooltip_unwanted":
            MessageLookupByLibrary.simpleMessage("Unwanted"),
        "lucky_bag_tooltip_wanted":
            MessageLookupByLibrary.simpleMessage("Wanted"),
        "main_quest": MessageLookupByLibrary.simpleMessage("Main Quests"),
        "main_story": MessageLookupByLibrary.simpleMessage("Main Record"),
        "main_story_chapter": MessageLookupByLibrary.simpleMessage("Chapter"),
        "master_detail_width":
            MessageLookupByLibrary.simpleMessage("Master-Detail width"),
        "master_mission":
            MessageLookupByLibrary.simpleMessage("Master Mission"),
        "master_mission_related_quest":
            MessageLookupByLibrary.simpleMessage("Related Quests"),
        "master_mission_solution":
            MessageLookupByLibrary.simpleMessage("Solution"),
        "master_mission_tasklist":
            MessageLookupByLibrary.simpleMessage("Missions"),
        "master_mission_weekly":
            MessageLookupByLibrary.simpleMessage("Weekly Mission"),
        "migrate_external_storage_btn_no":
            MessageLookupByLibrary.simpleMessage("NOT MIGRATE"),
        "migrate_external_storage_btn_yes":
            MessageLookupByLibrary.simpleMessage("MIGRATE"),
        "migrate_external_storage_manual_warning":
            MessageLookupByLibrary.simpleMessage(
                "Please move the data manually, otherwise the data will be empty after startup."),
        "migrate_external_storage_title":
            MessageLookupByLibrary.simpleMessage("Migrate Data"),
        "mission": MessageLookupByLibrary.simpleMessage("Mission"),
        "move_down": MessageLookupByLibrary.simpleMessage("Move down"),
        "move_up": MessageLookupByLibrary.simpleMessage("Move up"),
        "mystic_code": MessageLookupByLibrary.simpleMessage("Mystic Code"),
        "new_account": MessageLookupByLibrary.simpleMessage("New account"),
        "next_card": MessageLookupByLibrary.simpleMessage("Next"),
        "next_page": MessageLookupByLibrary.simpleMessage("NEXT"),
        "no_servant_quest_hint": MessageLookupByLibrary.simpleMessage(
            "There is no interlude or rank up quest"),
        "no_servant_quest_hint_subtitle": MessageLookupByLibrary.simpleMessage(
            "Click ♡ to view all servants\' quests"),
        "noble_phantasm":
            MessageLookupByLibrary.simpleMessage("Noble Phantasm"),
        "noble_phantasm_level":
            MessageLookupByLibrary.simpleMessage("Noble Phantasm"),
        "not_found": MessageLookupByLibrary.simpleMessage("Not Found"),
        "not_implemented":
            MessageLookupByLibrary.simpleMessage("Not yet implemented"),
        "not_outdated": MessageLookupByLibrary.simpleMessage("Not Outdated"),
        "np_short": MessageLookupByLibrary.simpleMessage("NP"),
        "obtain_time": MessageLookupByLibrary.simpleMessage("Time"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "open_condition": MessageLookupByLibrary.simpleMessage("Condition"),
        "open_in_file_manager": MessageLookupByLibrary.simpleMessage(
            "Please open with file manager"),
        "outdated": MessageLookupByLibrary.simpleMessage("Outdated"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "passive_skill": MessageLookupByLibrary.simpleMessage("Passive Skill"),
        "passive_skill_short": MessageLookupByLibrary.simpleMessage("Passive"),
        "plan": MessageLookupByLibrary.simpleMessage("Plan"),
        "plan_list_set_all": MessageLookupByLibrary.simpleMessage("Set All"),
        "plan_list_set_all_current":
            MessageLookupByLibrary.simpleMessage("Current"),
        "plan_list_set_all_target":
            MessageLookupByLibrary.simpleMessage("Target"),
        "plan_max10": MessageLookupByLibrary.simpleMessage("Plan Max(310)"),
        "plan_max9": MessageLookupByLibrary.simpleMessage("Plan Max(999)"),
        "plan_objective":
            MessageLookupByLibrary.simpleMessage("Plan Objective"),
        "plan_title": MessageLookupByLibrary.simpleMessage("Plan"),
        "planning_free_quest_btn":
            MessageLookupByLibrary.simpleMessage("Planning Quests"),
        "preferred_translation":
            MessageLookupByLibrary.simpleMessage("Preferred Translation"),
        "preferred_translation_footer": MessageLookupByLibrary.simpleMessage(
            "Drag to change the order.\nUsed for game data description, not UI language. Not all game data is translated for all 5 official languages."),
        "prev_page": MessageLookupByLibrary.simpleMessage("PREV"),
        "preview": MessageLookupByLibrary.simpleMessage("Preview"),
        "previous_card": MessageLookupByLibrary.simpleMessage("Previous"),
        "priority": MessageLookupByLibrary.simpleMessage("Priority"),
        "priority_tagging_hint": MessageLookupByLibrary.simpleMessage(
            "Tags should not be too long, otherwise it cannot be shown completely"),
        "project_homepage":
            MessageLookupByLibrary.simpleMessage("Project Homepage"),
        "quest": MessageLookupByLibrary.simpleMessage("Quest"),
        "quest_chapter_n": m13,
        "quest_condition": MessageLookupByLibrary.simpleMessage("Conditions"),
        "quest_detail_btn": MessageLookupByLibrary.simpleMessage("details"),
        "quest_fixed_drop": MessageLookupByLibrary.simpleMessage("Drops"),
        "quest_fixed_drop_short": MessageLookupByLibrary.simpleMessage("Drops"),
        "quest_reward": MessageLookupByLibrary.simpleMessage("Bonus"),
        "quest_reward_short": MessageLookupByLibrary.simpleMessage("Bonus"),
        "rarity": MessageLookupByLibrary.simpleMessage("Rarity"),
        "rate_app_store":
            MessageLookupByLibrary.simpleMessage("Rate on App Store"),
        "rate_play_store":
            MessageLookupByLibrary.simpleMessage("Rate on Google Play"),
        "region_cn": MessageLookupByLibrary.simpleMessage("CN"),
        "region_jp": MessageLookupByLibrary.simpleMessage("JP"),
        "region_kr": MessageLookupByLibrary.simpleMessage("KR"),
        "region_na": MessageLookupByLibrary.simpleMessage("NA"),
        "region_tw": MessageLookupByLibrary.simpleMessage("TW"),
        "remove_duplicated_svt":
            MessageLookupByLibrary.simpleMessage("Remove duplicated"),
        "remove_from_blacklist":
            MessageLookupByLibrary.simpleMessage("Remove from blacklist"),
        "rename": MessageLookupByLibrary.simpleMessage("Rename"),
        "rerun_event": MessageLookupByLibrary.simpleMessage("Rerun"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "reset_plan_all": m14,
        "reset_plan_shown": m15,
        "restart_to_apply_changes":
            MessageLookupByLibrary.simpleMessage("Restart to take effect"),
        "restart_to_upgrade_hint": MessageLookupByLibrary.simpleMessage(
            "Restart to upgrade. If the update fails, please manually copy the source folder to destination"),
        "restore": MessageLookupByLibrary.simpleMessage("Restore"),
        "results": MessageLookupByLibrary.simpleMessage("Results"),
        "saint_quartz_plan": MessageLookupByLibrary.simpleMessage("SQ Plan"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "save_to_photos":
            MessageLookupByLibrary.simpleMessage("Save to Photos"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "screen_size": MessageLookupByLibrary.simpleMessage("Screen Size"),
        "screenshots": MessageLookupByLibrary.simpleMessage("Screenshots"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "search_option_basic": MessageLookupByLibrary.simpleMessage("Basic"),
        "search_options": MessageLookupByLibrary.simpleMessage("Search Scopes"),
        "select_copy_plan_source":
            MessageLookupByLibrary.simpleMessage("Select copy source"),
        "select_lang": MessageLookupByLibrary.simpleMessage("Select Language"),
        "select_plan": MessageLookupByLibrary.simpleMessage("Select Plan"),
        "send_email_to": MessageLookupByLibrary.simpleMessage("Send email to"),
        "sending": MessageLookupByLibrary.simpleMessage("Sending"),
        "sending_failed":
            MessageLookupByLibrary.simpleMessage("Sending failed"),
        "sent": MessageLookupByLibrary.simpleMessage("Sent"),
        "servant": MessageLookupByLibrary.simpleMessage("Servant"),
        "servant_coin": MessageLookupByLibrary.simpleMessage("Servant Coin"),
        "servant_coin_short": MessageLookupByLibrary.simpleMessage("Coin"),
        "servant_detail_page":
            MessageLookupByLibrary.simpleMessage("Servant Detail Page"),
        "servant_list_page":
            MessageLookupByLibrary.simpleMessage("Servant List Page"),
        "servant_title": MessageLookupByLibrary.simpleMessage("Servant"),
        "set_plan_name": MessageLookupByLibrary.simpleMessage("Set Plan Name"),
        "setting_always_on_top":
            MessageLookupByLibrary.simpleMessage("Always On Top"),
        "setting_auto_rotate":
            MessageLookupByLibrary.simpleMessage("Auto Rotate"),
        "setting_auto_turn_on_plan_not_reach":
            MessageLookupByLibrary.simpleMessage("Auto Turn on PlanNotReach"),
        "setting_home_plan_list_page":
            MessageLookupByLibrary.simpleMessage("Home-Plan List Page"),
        "setting_only_change_second_append_skill":
            MessageLookupByLibrary.simpleMessage(
                "Only Change 2nd Append Skill"),
        "setting_priority_tagging":
            MessageLookupByLibrary.simpleMessage("Priority Tagging"),
        "setting_servant_class_filter_style":
            MessageLookupByLibrary.simpleMessage("Servant Class Filter Style"),
        "setting_setting_favorite_button_default":
            MessageLookupByLibrary.simpleMessage("Favorite Button Default"),
        "setting_show_account_at_homepage":
            MessageLookupByLibrary.simpleMessage("Show Account at Homepage"),
        "setting_tabs_sorting":
            MessageLookupByLibrary.simpleMessage("Tabs Sorting"),
        "settings_data": MessageLookupByLibrary.simpleMessage("Data"),
        "settings_documents": MessageLookupByLibrary.simpleMessage("Documents"),
        "settings_general": MessageLookupByLibrary.simpleMessage("General"),
        "settings_language": MessageLookupByLibrary.simpleMessage("Language"),
        "settings_tab_name": MessageLookupByLibrary.simpleMessage("Settings"),
        "settings_userdata_footer": MessageLookupByLibrary.simpleMessage(
            "Backup userdata before upgrading application, and move backups to safe locations outside app\'s document folder"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "show_carousel": MessageLookupByLibrary.simpleMessage("Show Carousel"),
        "show_frame_rate":
            MessageLookupByLibrary.simpleMessage("Show Frame Rate"),
        "show_fullscreen":
            MessageLookupByLibrary.simpleMessage("Show Fullscreen"),
        "show_outdated": MessageLookupByLibrary.simpleMessage("Show Outdated"),
        "silver": MessageLookupByLibrary.simpleMessage("Silver"),
        "simulator": MessageLookupByLibrary.simpleMessage("Simulator"),
        "skill": MessageLookupByLibrary.simpleMessage("Skill"),
        "skill_up": MessageLookupByLibrary.simpleMessage("Skill Up"),
        "skilled_max10":
            MessageLookupByLibrary.simpleMessage("Skills Max(310)"),
        "solution_battle_count":
            MessageLookupByLibrary.simpleMessage("Battle Count"),
        "solution_target_count":
            MessageLookupByLibrary.simpleMessage("Target Count"),
        "solution_total_battles_ap": m16,
        "sort_order": MessageLookupByLibrary.simpleMessage("Sort"),
        "sprites": MessageLookupByLibrary.simpleMessage("Sprites"),
        "sq_fragment_convert":
            MessageLookupByLibrary.simpleMessage("21 Fragments = 3 Quartzs"),
        "sq_short": MessageLookupByLibrary.simpleMessage("SQ"),
        "statistics_title": MessageLookupByLibrary.simpleMessage("Statistics"),
        "still_send": MessageLookupByLibrary.simpleMessage("Still Send"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "summon": MessageLookupByLibrary.simpleMessage("Summon"),
        "summon_daily": MessageLookupByLibrary.simpleMessage("Daily"),
        "summon_expectation_btn":
            MessageLookupByLibrary.simpleMessage("Expectation"),
        "summon_gacha_footer":
            MessageLookupByLibrary.simpleMessage("Just for entertainment"),
        "summon_gacha_result": MessageLookupByLibrary.simpleMessage("Results"),
        "summon_show_banner":
            MessageLookupByLibrary.simpleMessage("Show Banner"),
        "summon_ticket_short": MessageLookupByLibrary.simpleMessage("Ticket"),
        "summon_title": MessageLookupByLibrary.simpleMessage("Summons"),
        "support_chaldea":
            MessageLookupByLibrary.simpleMessage("Support and Donation"),
        "svt_ascension_icon":
            MessageLookupByLibrary.simpleMessage("Ascension Icon"),
        "svt_basic_info": MessageLookupByLibrary.simpleMessage("Info"),
        "svt_class_filter_auto": MessageLookupByLibrary.simpleMessage("Auto"),
        "svt_class_filter_hide": MessageLookupByLibrary.simpleMessage("Hidden"),
        "svt_class_filter_single_row": MessageLookupByLibrary.simpleMessage(
            "<Extra Class> Collapsed\\nSingle Row"),
        "svt_class_filter_single_row_expanded":
            MessageLookupByLibrary.simpleMessage(
                "<Extra Class> Expanded\\nSingle Row"),
        "svt_class_filter_two_row":
            MessageLookupByLibrary.simpleMessage("<Extra Class> in Second Row"),
        "svt_fav_btn_remember":
            MessageLookupByLibrary.simpleMessage("Remember"),
        "svt_fav_btn_show_all":
            MessageLookupByLibrary.simpleMessage("Show All"),
        "svt_fav_btn_show_favorite":
            MessageLookupByLibrary.simpleMessage("Show Favorite"),
        "svt_not_planned": MessageLookupByLibrary.simpleMessage("Not favorite"),
        "svt_plan_hidden": MessageLookupByLibrary.simpleMessage("Hidden"),
        "svt_profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "svt_profile_info":
            MessageLookupByLibrary.simpleMessage("Character Info"),
        "svt_profile_n": m17,
        "svt_related_ce": MessageLookupByLibrary.simpleMessage("Related CEs"),
        "svt_reset_plan": MessageLookupByLibrary.simpleMessage("Reset Plan"),
        "svt_second_archive":
            MessageLookupByLibrary.simpleMessage("Second Archive"),
        "svt_stat_own_total":
            MessageLookupByLibrary.simpleMessage("(SkillMax) Owned/Total"),
        "svt_switch_slider_dropdown":
            MessageLookupByLibrary.simpleMessage("Switch Slider/Dropdown"),
        "switch_region": MessageLookupByLibrary.simpleMessage("Switch Region"),
        "test_info_pad": MessageLookupByLibrary.simpleMessage("Test Info Pad"),
        "testing": MessageLookupByLibrary.simpleMessage("Testing"),
        "time_close": MessageLookupByLibrary.simpleMessage("Close"),
        "time_end": MessageLookupByLibrary.simpleMessage("End"),
        "time_start": MessageLookupByLibrary.simpleMessage("Start"),
        "toogle_dark_mode":
            MessageLookupByLibrary.simpleMessage("Toggle Dark Mode"),
        "tooltip_refresh_sliders":
            MessageLookupByLibrary.simpleMessage("Refresh slides"),
        "total_ap": MessageLookupByLibrary.simpleMessage("Total AP"),
        "total_counts": MessageLookupByLibrary.simpleMessage("Total counts"),
        "treasure_box_draw_cost":
            MessageLookupByLibrary.simpleMessage("Draw Cost"),
        "treasure_box_extra_gift":
            MessageLookupByLibrary.simpleMessage("Extra Gifts per box"),
        "treasure_box_max_draw_once":
            MessageLookupByLibrary.simpleMessage("Max Draws at once:"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "update_already_latest":
            MessageLookupByLibrary.simpleMessage("Already the latest version"),
        "update_dataset":
            MessageLookupByLibrary.simpleMessage("Update Dataset"),
        "update_msg_error":
            MessageLookupByLibrary.simpleMessage("Update failed"),
        "update_msg_no_update":
            MessageLookupByLibrary.simpleMessage("No update available"),
        "update_msg_succuss": MessageLookupByLibrary.simpleMessage("Updated"),
        "upload": MessageLookupByLibrary.simpleMessage("Upload"),
        "usage": MessageLookupByLibrary.simpleMessage("Usage"),
        "userdata": MessageLookupByLibrary.simpleMessage("Userdata"),
        "userdata_download_backup":
            MessageLookupByLibrary.simpleMessage("Download Backup"),
        "userdata_download_choose_backup":
            MessageLookupByLibrary.simpleMessage("Choose one backup"),
        "userdata_local":
            MessageLookupByLibrary.simpleMessage("Userdata (Local)"),
        "userdata_sync":
            MessageLookupByLibrary.simpleMessage("Data synchronization"),
        "userdata_sync_hint": MessageLookupByLibrary.simpleMessage(
            "Only update account data, not include local settings"),
        "userdata_sync_server": MessageLookupByLibrary.simpleMessage(
            "Data synchronization(Server)"),
        "userdata_upload_backup":
            MessageLookupByLibrary.simpleMessage("Upload Backup"),
        "valentine_craft":
            MessageLookupByLibrary.simpleMessage("Valentine craft"),
        "version": MessageLookupByLibrary.simpleMessage("Version"),
        "view_illustration":
            MessageLookupByLibrary.simpleMessage("View Illustration"),
        "voice": MessageLookupByLibrary.simpleMessage("Voice"),
        "war_title": MessageLookupByLibrary.simpleMessage("Wars"),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "web_renderer": MessageLookupByLibrary.simpleMessage("Web Renderer"),
        "words_separate": m0
      };
}
