set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>24746563680708817727
,p_default_application_id=>74361
,p_default_owner=>'CAMERONM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 74361 - S16E8_Organization.sim
--
-- Application Export:
--   Application:     74361
--   Name:            S16E8_Organization.sim
--   Date and Time:   15:12 Wednesday April 27, 2016
--   Exported By:     CAMERONMOELLER1@YAHOO.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                      7
--     Items:                  116
--     Processes:               22
--     Regions:                 14
--     Buttons:                  7
--     Dynamic Actions:         11
--   Shared Components:
--     Logic:
--       Web Services:          11
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,74361)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MIKEWORKSPACE347')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'S16E8_Organization.sim')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_108314')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D8F785972F9E7EF9F263EC7A7B0FE4059FF6DEEA7775872138E9241CACE4A938'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(63308594416557037823)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:S16E8_Organization.sim'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427151029'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(63308541779394037743)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63308594586919037826)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63310830859784314167)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'People'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-child'
,p_list_item_disp_cond_type=>'ITEM_IS_NOT_NULL'
,p_list_item_disp_condition=>'SELECT'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63499689253756799638)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Add Person'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'ITEM_IS_NOT_NULL'
,p_list_item_disp_condition=>'SELECT'
,p_parent_list_item_id=>wwv_flow_api.id(63310830859784314167)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63353501439535371131)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-archive'
,p_list_item_disp_cond_type=>'ITEM_IS_NOT_NULL'
,p_list_item_disp_condition=>'SELECT'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63483590559208977381)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Project'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_list_item_disp_condition=>'LOGIN'
,p_list_item_disp_condition2=>'Manager:Interim Manager:President'
,p_parent_list_item_id=>wwv_flow_api.id(63353501439535371131)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63356063167432426418)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'ITEM_IS_NOT_NULL'
,p_list_item_disp_condition=>'SELECT'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63473009378197645606)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Department'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'LOGIN'
,p_list_item_disp_condition2=>'President'
,p_parent_list_item_id=>wwv_flow_api.id(63356063167432426418)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(63308594142832037821)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(63308594284647037822)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(63308541465934037741)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(63308541651593037743)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(63308541727150037743)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(63308594543955037825)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(63308594929678037827)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308541895594037744)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542018570037745)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542139743037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542180129037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542322892037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542379319037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542481337037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542576140037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542669005037746)
,p_page_template_id=>wwv_flow_api.id(63308541895594037744)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308542812235037747)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542952786037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308542964479037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543114585037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543233843037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543263558037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543437004037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543464260037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543620372037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543716036037747)
,p_page_template_id=>wwv_flow_api.id(63308542812235037747)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308543779275037747)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308543880006037748)
,p_page_template_id=>wwv_flow_api.id(63308543779275037747)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544047298037748)
,p_page_template_id=>wwv_flow_api.id(63308543779275037747)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308544095672037748)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544181586037749)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544269783037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544405598037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544487995037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544620407037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544663966037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544764435037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308544941217037750)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308545035995037751)
,p_page_template_id=>wwv_flow_api.id(63308544095672037748)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308555120889037753)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555167201037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555323564037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555379978037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555521335037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555576248037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555720018037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308555817872037754)
,p_page_template_id=>wwv_flow_api.id(63308555120889037753)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308555918869037754)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556042858037754)
,p_page_template_id=>wwv_flow_api.id(63308555918869037754)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556092273037754)
,p_page_template_id=>wwv_flow_api.id(63308555918869037754)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556207712037754)
,p_page_template_id=>wwv_flow_api.id(63308555918869037754)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308556275187037755)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556444752037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556472539037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556574257037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556757127037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556809672037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556919148037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308556965820037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557101402037755)
,p_page_template_id=>wwv_flow_api.id(63308556275187037755)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308557197095037755)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557289778037755)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557415436037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557463059037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557579376037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557660717037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557857602037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308557877758037756)
,p_page_template_id=>wwv_flow_api.id(63308557197095037755)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(63308558021041037756)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308558140482037756)
,p_page_template_id=>wwv_flow_api.id(63308558021041037756)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308558217659037756)
,p_page_template_id=>wwv_flow_api.id(63308558021041037756)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308558270139037756)
,p_page_template_id=>wwv_flow_api.id(63308558021041037756)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63308588894264037802)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63308588974328037805)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(63308589137677037805)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308558388709037756)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308558509989037758)
,p_plug_template_id=>wwv_flow_api.id(63308558388709037756)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308559950794037762)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308560056059037762)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308560109213037762)
,p_plug_template_id=>wwv_flow_api.id(63308560056059037762)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308560181433037762)
,p_plug_template_id=>wwv_flow_api.id(63308560056059037762)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308560889179037763)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308561032438037763)
,p_plug_template_id=>wwv_flow_api.id(63308560889179037763)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308561074486037763)
,p_plug_template_id=>wwv_flow_api.id(63308560889179037763)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308564303730037766)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308564364813037767)
,p_plug_template_id=>wwv_flow_api.id(63308564303730037766)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308564462300037767)
,p_plug_template_id=>wwv_flow_api.id(63308564303730037766)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308566366119037769)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308566542533037769)
,p_plug_template_id=>wwv_flow_api.id(63308566366119037769)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308566598421037769)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308566691083037769)
,p_plug_template_id=>wwv_flow_api.id(63308566598421037769)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308567525824037770)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308567769162037771)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308567888169037771)
,p_plug_template_id=>wwv_flow_api.id(63308567769162037771)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308568020576037771)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308568105675037771)
,p_plug_template_id=>wwv_flow_api.id(63308568020576037771)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308568169221037771)
,p_plug_template_id=>wwv_flow_api.id(63308568020576037771)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308570068300037773)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308570218473037773)
,p_plug_template_id=>wwv_flow_api.id(63308570068300037773)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308570282218037773)
,p_plug_template_id=>wwv_flow_api.id(63308570068300037773)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308571280009037774)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(63308571836798037774)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(63308571885142037775)
,p_plug_template_id=>wwv_flow_api.id(63308571836798037774)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308580172905037787)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308581900449037792)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308584040801037795)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308584856313037795)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308585662571037796)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308586254067037796)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308586338368037796)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308586407693037797)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308586531592037797)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308587430304037800)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(63308587903205037800)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308572378103037775)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308572492770037776)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308574256310037777)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308576299384037783)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308576740304037783)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308576802069037784)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(63308576802069037784)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308578058203037785)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308578341934037786)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(63308579295844037786)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63308588450554037801)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63308588498058037801)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63308588588903037801)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63308588663069037802)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(63308588848958037802)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(63308589509041037805)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(63308589658091037807)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(63308589611636037806)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(63308590065990037810)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(63308557197095037755)
,p_default_dialog_template=>wwv_flow_api.id(63308555918869037754)
,p_error_template=>wwv_flow_api.id(63308543779275037747)
,p_printer_friendly_template=>wwv_flow_api.id(63308557197095037755)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(63308543779275037747)
,p_default_button_template=>wwv_flow_api.id(63308588974328037805)
,p_default_region_template=>wwv_flow_api.id(63308568020576037771)
,p_default_chart_template=>wwv_flow_api.id(63308568020576037771)
,p_default_form_template=>wwv_flow_api.id(63308568020576037771)
,p_default_reportr_template=>wwv_flow_api.id(63308568020576037771)
,p_default_tabform_template=>wwv_flow_api.id(63308568020576037771)
,p_default_wizard_template=>wwv_flow_api.id(63308568020576037771)
,p_default_menur_template=>wwv_flow_api.id(63308571280009037774)
,p_default_listr_template=>wwv_flow_api.id(63308568020576037771)
,p_default_irr_template=>wwv_flow_api.id(63308567525824037770)
,p_default_report_template=>wwv_flow_api.id(63308576802069037784)
,p_default_label_template=>wwv_flow_api.id(63308588498058037801)
,p_default_menu_template=>wwv_flow_api.id(63308589509041037805)
,p_default_calendar_template=>wwv_flow_api.id(63308589611636037806)
,p_default_list_template=>wwv_flow_api.id(63308584040801037795)
,p_default_nav_list_template=>wwv_flow_api.id(63308587430304037800)
,p_default_top_nav_list_temp=>wwv_flow_api.id(63308587430304037800)
,p_default_side_nav_list_temp=>wwv_flow_api.id(63308586407693037797)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(63308560056059037762)
,p_default_dialogr_template=>wwv_flow_api.id(63308559950794037762)
,p_default_option_label=>wwv_flow_api.id(63308588498058037801)
,p_default_required_label=>wwv_flow_api.id(63308588663069037802)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(63308586338368037796)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(63308589773175037808)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(63308589933517037809)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(63308589991710037809)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308558745027037761)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308558945204037761)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308559140015037762)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308560283705037763)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308560528790037763)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308561239509037763)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308561559873037764)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308562230617037764)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308562774738037765)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308563046529037765)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308563928854037766)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308565495179037768)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308566900517037770)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308570406661037773)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308570590225037774)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308571026787037774)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308571371312037774)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308572013319037775)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308572609805037776)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308572820894037776)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308574399671037778)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308575057936037782)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308575426836037782)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308576081026037783)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308576454866037783)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308576956407037784)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308577171402037784)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308577420168037784)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308578400573037786)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308580266722037788)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308581103617037791)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308582106613037792)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308582853263037793)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308583144099037794)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308583815783037794)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308584476709037795)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308586874682037799)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308587971321037800)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308589176876037805)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308590178701037817)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308590364730037817)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308590595906037817)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308590824924037818)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308590962206037818)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308591431520037818)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308592114732037819)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308592511913037819)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308592757490037819)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308592926906037820)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308593148744037820)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308593442946037820)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(63308593740356037820)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308558599072037759)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308558795185037761)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(63308558745027037761)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559028573037761)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(63308558945204037761)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559178782037762)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(63308559140015037762)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559264673037762)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(63308558745027037761)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559395771037762)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(63308558945204037761)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559486990037762)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(63308558745027037761)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559633400037762)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(63308558945204037761)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559719542037762)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(63308558745027037761)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308559810730037762)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308558388709037756)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(63308559140015037762)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308560435545037763)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(63308560056059037762)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308560595022037763)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(63308560056059037762)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(63308560528790037763)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308560698699037763)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(63308560056059037762)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308560823567037763)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(63308560056059037762)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(63308560528790037763)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561285192037764)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(63308561239509037763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561367617037764)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(63308561239509037763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561469696037764)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(63308561239509037763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561680026037764)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561854663037764)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308561858377037764)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562021739037764)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(63308561239509037763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562145935037764)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562307111037764)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562420096037764)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562543736037764)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562649480037764)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562696930037765)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308562930491037765)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(63308562774738037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563150332037765)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563179858037765)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(63308562774738037765)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563328866037765)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563385134037765)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563553239037765)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563589631037766)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563658633037766)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563822732037766)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308563993735037766)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(63308563928854037766)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564085455037766)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(63308563928854037766)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564163876037766)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308560889179037763)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564640315037767)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564701303037767)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564814007037767)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564898345037767)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308564994272037767)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565094735037767)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565174956037767)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565342597037768)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565388808037768)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565624880037768)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(63308565495179037768)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565741297037768)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(63308565495179037768)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565766422037768)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308565944448037768)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308566042190037768)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308566088814037769)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308566237398037769)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308566269283037769)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308564303730037766)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308566827929037770)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567018249037770)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(63308566900517037770)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567129138037770)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(63308566900517037770)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567198682037770)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567293384037770)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567453965037770)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308566598421037769)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(63308566900517037770)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567601253037771)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308567525824037770)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308567662668037771)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308567525824037770)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568277345037771)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568390959037771)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568503106037771)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568625499037771)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(63308561559873037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568669518037772)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568856900037772)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568924381037772)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308568993671037772)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569089667037772)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(63308562230617037764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569217920037772)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(63308562774738037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569334992037772)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569431607037773)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(63308562774738037765)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569464274037773)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569612447037773)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569755167037773)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569797208037773)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(63308563046529037765)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308569895529037773)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308570018126037773)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308568020576037771)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(63308560283705037763)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308570542045037774)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(63308570406661037773)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308570731823037774)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(63308570590225037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308570846441037774)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308570883153037774)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(63308570590225037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308571073597037774)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(63308571026787037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308571188068037774)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308570068300037773)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(63308571026787037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308571551278037774)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(63308571280009037774)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(63308571371312037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308571588931037774)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(63308571280009037774)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308571680110037774)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(63308571280009037774)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(63308571371312037774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308572123509037775)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(63308571836798037774)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(63308572013319037775)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308572221124037775)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308571836798037774)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(63308572013319037775)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308572305993037775)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(63308571836798037774)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308572699585037776)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(63308572609805037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308572945728037777)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573012461037777)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(63308572609805037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573099875037777)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573172976037777)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(63308572609805037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573316565037777)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573376353037777)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573554112037777)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(63308572609805037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573612403037777)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(63308572609805037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573681342037777)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573771274037777)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573895396037777)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308573958458037777)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574112542037777)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308572492770037776)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574284366037777)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574540953037778)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(63308574399671037778)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574643228037782)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574710505037782)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(63308574399671037778)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574764159037782)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574885982037782)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(63308574399671037778)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308574996255037782)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575221531037782)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(63308575057936037782)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575280424037782)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(63308575057936037782)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575546387037782)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(63308575426836037782)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575643434037782)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(63308575426836037782)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575692038037783)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(63308575057936037782)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575760729037783)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575878940037783)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(63308574399671037778)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308575999848037783)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308576234508037783)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308574256310037777)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(63308576081026037783)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308576535604037783)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308576299384037783)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(63308576454866037783)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308576566881037783)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308576299384037783)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(63308576454866037783)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577035100037784)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(63308576956407037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577087521037784)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(63308576956407037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577327203037784)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(63308577171402037784)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577509535037784)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(63308577420168037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577595131037784)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(63308577420168037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577715509037784)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(63308577420168037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577794689037784)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(63308577171402037784)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308577867038037784)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578039124037785)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308576802069037784)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(63308577420168037784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578192916037785)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(63308578058203037785)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(63308575057936037782)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578530145037786)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578639150037786)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578753909037786)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578766317037786)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308578875558037786)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579004860037786)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579117268037786)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579174225037786)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(63308578341934037786)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579398263037787)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579479548037787)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579579221037787)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579702332037787)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579828904037787)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(63308572820894037776)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308579864362037787)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580044668037787)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580098478037787)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(63308579295844037786)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(63308578400573037786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580417954037788)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580486729037790)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580630914037790)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580724150037790)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580850289037790)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580924222037790)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308580989375037790)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581257622037791)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(63308581103617037791)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581291114037791)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(63308581103617037791)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581423158037791)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581474944037792)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(63308581103617037791)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581602822037792)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581746351037792)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(63308581103617037791)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581827431037792)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(63308580172905037787)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(63308581103617037791)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308581967104037792)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582188567037792)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(63308582106613037792)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582294573037792)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582391841037792)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(63308582106613037792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582529326037792)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582640094037793)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(63308582106613037792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582705121037793)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308582883164037793)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583016432037793)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583187646037794)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(63308583144099037794)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583350599037794)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(63308583144099037794)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583373846037794)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583526005037794)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583626713037794)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(63308582106613037792)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583714078037794)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308583881287037794)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308581900449037792)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(63308583815783037794)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584108581037795)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584160682037795)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584316865037795)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584444882037795)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584570045037795)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(63308584476709037795)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584669509037795)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308584040801037795)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(63308584476709037795)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308584948021037795)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585046452037795)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585094689037795)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585188689037795)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585321560037796)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585424652037796)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585502846037796)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585602493037796)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(63308584856313037795)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585804071037796)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(63308585662571037796)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585860385037796)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308585662571037796)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308585968369037796)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308585662571037796)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308586118259037796)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308585662571037796)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308586569105037798)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(63308583144099037794)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308586661003037798)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(63308580266722037788)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308586809100037798)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(63308583144099037794)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587027368037799)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(63308586874682037799)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587069053037799)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587161950037800)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(63308582853263037793)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587270442037800)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(63308586531592037797)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(63308586874682037799)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587553277037800)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(63308587430304037800)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587589761037800)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(63308587430304037800)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587718340037800)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(63308587430304037800)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308587765381037800)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(63308587430304037800)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308588101849037800)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(63308587903205037800)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(63308587971321037800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308588226367037801)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(63308587903205037800)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(63308587971321037800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308588345655037801)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(63308587903205037800)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(63308587971321037800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308589260168037805)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(63308589137677037805)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(63308589176876037805)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308589403298037805)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(63308589137677037805)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(63308589176876037805)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308590300435037817)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(63308590178701037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308590472396037817)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(63308590364730037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308590703280037817)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(63308590595906037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308590945938037818)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(63308590824924037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591078367037818)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(63308590962206037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591241265037818)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(63308590364730037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591294650037818)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(63308590595906037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591545991037819)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(63308591431520037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591583291037819)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(63308591431520037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591726849037819)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(63308591431520037818)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591849397037819)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(63308590178701037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308591924453037819)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(63308590962206037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592050727037819)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(63308590824924037818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592192620037819)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(63308592114732037819)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592347416037819)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(63308590178701037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592365192037819)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(63308590178701037817)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592627206037819)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(63308592511913037819)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308592824087037819)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(63308592757490037819)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593010925037820)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(63308592926906037820)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593200740037820)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(63308593148744037820)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593259448037820)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(63308593148744037820)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593458777037820)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(63308593442946037820)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593636063037820)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(63308592757490037819)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593844080037820)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(63308593740356037820)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593956878037820)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(63308593989872037820)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(63308593740356037820)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(63308594416557037823)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(63308594193244037821)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(63308541779394037743)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(63308586407693037797)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(63308594142832037821)
,p_nav_bar_list_template_id=>wwv_flow_api.id(63308586338368037796)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427150843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31786769997740723909)
,p_plug_name=>'LOGIN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63308594963368037828)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63308571280009037774)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(63308594543955037825)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(63308589509041037805)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31786771626222723926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31786769997740723909)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31792110740006821327)
,p_branch_name=>'Leave page'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31786771626222723926)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'SELECT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31786769851530723908)
,p_name=>'LOGIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31786769997740723909)
,p_prompt=>'Login'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employee,Project Employee,Manager,Interim Manager,President'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31786770048790723910)
,p_name=>'SELECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31786769997740723909)
,p_prompt=>'Select'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISPLAY_VAL AS d, RETURN_VAL AS r FROM TABLE(rwp.doLOV(''Person'', ''[first_name] [last_name]'', ''[person_id]''));'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'LOGIN'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427133852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63310831339228314168)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63310847634378314186)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(63308568020576037771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_PERSON_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(63308576802069037784)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63310848314640314189)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63419795281897720365)
,p_plug_name=>'People'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63308567525824037770)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'''President'' AS "Type",',
'jt11.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'jt7.employee_id AS "Employee Id",',
'jt8.salary AS "Salary",',
'jt9.salary_exception AS "Salary Exception",',
'jt10.bonus AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt11',
'where',
't.collection_name = ''P2_PRESIDENT_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'UNION',
'',
'select',
'''Interim Manager'' AS "Type",',
'jt11.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'jt7.employee_id AS "Employee Id",',
'jt8.salary AS "Salary",',
'jt9.salary_exception AS "Salary Exception",',
'jt10.bonus AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt11',
'where',
't.collection_name = ''P2_INTERIMMANAGER_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'UNION',
'',
'select',
'''Manager'' AS "Type",',
'jt11.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'jt7.employee_id AS "Employee Id",',
'jt8.salary AS "Salary",',
'jt9.salary_exception AS "Salary Exception",',
'jt10.bonus AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.bonus[*]'' COLUMNS rid for ordinality, bonus varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt11',
'where',
't.collection_name = ''P2_MANAGER_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid',
'',
'',
'UNION',
'',
'select',
'''Project Employee'' AS "Type",',
'jt10.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'jt7.employee_id AS "Employee Id",',
'jt8.salary AS "Salary",',
'jt9.salary_exception AS "Salary Exception",',
'NULL AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt10',
'where',
't.collection_name = ''P2_PROJECTEMPLOYEE_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'UNION',
'',
'select',
'''Employee'' AS "Type",',
'jt10.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'jt7.employee_id AS "Employee Id",',
'jt8.salary AS "Salary",',
'jt9.salary_exception AS "Salary Exception",',
'NULL AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.employee_id[*]'' COLUMNS rid for ordinality, employee_id varchar path ''$'') jt7,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.salary_exception[*]'' COLUMNS rid for ordinality, salary_exception varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt10',
'where',
't.collection_name = ''P2_EMPLOYEE_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'UNION',
'',
'select',
'''Previous Employee'' AS "Type",',
'jt10.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'NULL AS "Employee Id",',
'jt8.salary AS "Salary",',
'NULL AS "Salary Exception",',
'NULL AS "Bonus",',
'jt9.isfired AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.salary[*]'' COLUMNS rid for ordinality, salary varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.isfired[*]'' COLUMNS rid for ordinality, isfired varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt10',
'where',
't.collection_name = ''P2_PREVIOUSEMPLOYEE_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid',
'',
'UNION',
'',
'select',
'''Person'' AS "Type",',
'jt7.person_id AS "Person Id",',
'jt1.first_name AS "First Name",',
'jt2.last_name AS "Last Name",',
'jt3.home_address AS "Home Address",',
'jt4.zipcode AS "Zipcode",',
'jt5.home_phone AS "Home Phone",',
'jt6.us_citizen AS "US Citizen",',
'NULL AS "Employee Id",',
'NULL AS "Salary",',
'NULL AS "Salary Exception",',
'NULL AS "Bonus",',
'NULL AS "Is fired"',
'from apex_collections t,',
'json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt2,',
'json_table(t.clob001, ''$.home_address[*]'' COLUMNS rid for ordinality, home_address varchar path ''$'') jt3,',
'json_table(t.clob001, ''$.zipcode[*]'' COLUMNS rid for ordinality, zipcode varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.home_phone[*]'' COLUMNS rid for ordinality, home_phone varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.us_citizen[*]'' COLUMNS rid for ordinality, us_citizen varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.person_id[*]'' COLUMNS rid for ordinality, person_id varchar path ''$'') jt7',
'where',
't.collection_name = ''P2_PERSON_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63419795374043720365)
,p_name=>'People'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MICHAEL.SHANNON002@GMAIL.COM'
,p_internal_uid=>31658888316259878079
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419795752976720369)
,p_db_column_name=>'First Name'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419796066312720370)
,p_db_column_name=>'Last Name'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419796529276720372)
,p_db_column_name=>'Home Address'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Home Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419796862754720372)
,p_db_column_name=>'Zipcode'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Zipcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419797273661720373)
,p_db_column_name=>'Home Phone'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Home Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63419797753952720373)
,p_db_column_name=>'US Citizen'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Us Citizen'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492059319584305589)
,p_db_column_name=>'Type'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492060036645305593)
,p_db_column_name=>'Employee Id'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Employee Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492060757524305597)
,p_db_column_name=>'Salary'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492061399537305600)
,p_db_column_name=>'Salary Exception'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Salary Exception'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492062066731305604)
,p_db_column_name=>'Bonus'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Bonus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63492062856849305608)
,p_db_column_name=>'Is fired'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Is Fired'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63510567329552637084)
,p_db_column_name=>'Person Id'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Person Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63419815869276720857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316589089'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'First Name:Last Name:Home Address:Zipcode:Home Phone:US Citizen:Type:Employee Id:Salary:Salary Exception:Bonus:Is fired:Person Id'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63310831728776314169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63419795281897720365)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63310832063749314169)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310832881506314170)
,p_name=>'P2_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310833690229314171)
,p_name=>'P2_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310834538453314172)
,p_name=>'P2_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310835265622314173)
,p_name=>'P2_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310836122723314173)
,p_name=>'P2_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310836887285314176)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310837704256314177)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310838520896314177)
,p_name=>'P2_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310839346005314178)
,p_name=>'P2_FIRSTNAME'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310840143598314179)
,p_name=>'P2_LASTNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310840904221314180)
,p_name=>'P2_HOMEADDRESS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310841743299314181)
,p_name=>'P2_ZIPCODE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310842471423314181)
,p_name=>'P2_HOMEPHONE'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310843292750314182)
,p_name=>'P2_USCITIZEN'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310844070177314183)
,p_name=>'P2_SPOUSE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310844941860314183)
,p_name=>'P2_CHILDREN'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Children'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310845660227314184)
,p_name=>'P2_PARENTS'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_prompt=>'Parents'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63310846509254314185)
,p_name=>'P2_QUERY'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'"from person retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492099147666319463)
,p_name=>'P2_QUERY_PRESIDENT'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from president retrieve *;'''
,p_prompt=>'Query President'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492169021309327093)
,p_name=>'P2_QUERY_INTERIMMANAGER'
,p_item_sequence=>38
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from interim_manager retrieve *;'''
,p_prompt=>'Query Interimmanager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492176826736331923)
,p_name=>'P2_QUERY_MANAGER'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from manager retrieve *;'''
,p_prompt=>'Query Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492226761724338965)
,p_name=>'P2_QUERY_PROJECTEMPLOYEE'
,p_item_sequence=>58
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from project_employee retrieve *;'''
,p_prompt=>'Query Projectemployee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492256797287344456)
,p_name=>'P2_QUERY_EMPLOYEE'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from employee retrieve *;'''
,p_prompt=>'Query Employee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63492301905424350086)
,p_name=>'P2_QUERY_PREVIOUSEMPLOYEE'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_api.id(63310831339228314168)
,p_item_default=>'''from previous_employee retrieve *;'''
,p_prompt=>'Query Previousemployee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435472215617105642)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435472372173105643)
,p_event_id=>wwv_flow_api.id(31435472215617105642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63310831339228314168)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435472473370105644)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435472522474105645)
,p_event_id=>wwv_flow_api.id(31435472473370105644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63310847634378314186)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63310832536363314170)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31548416488578882131:31548416656201882132'
,p_attribute_01=>wwv_flow_api.id(63309323713985724418)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63492445901549371806)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_president_service'
,p_process_sql_clob=>'31548663122911957793:31548663338515957794'
,p_attribute_01=>wwv_flow_api.id(63309570396299800080)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PRESIDENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63310831728776314169)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63492581223127383079)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_interimmanager_service'
,p_process_sql_clob=>'31548626237136321538:31548626455280321538'
,p_attribute_01=>wwv_flow_api.id(63309533513064163824)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_INTERIMMANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63492656810087393288)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_manager_service'
,p_process_sql_clob=>'31548578879095308722:31548579093714308722'
,p_attribute_01=>wwv_flow_api.id(63309486151498151008)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_MANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63492754544411404537)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_projectemployee_service'
,p_process_sql_clob=>'31548550027453291826:31548550259686291827'
,p_attribute_01=>wwv_flow_api.id(63309457317470134113)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PROJECTEMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63492923649110415399)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_employee_service'
,p_process_sql_clob=>'31548475426750273990:31548475693673273991'
,p_attribute_01=>wwv_flow_api.id(63309382751457116277)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_EMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63493028374139424566)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P2_previousemployee_service'
,p_process_sql_clob=>'31548774412166347004:31548774673368347004'
,p_attribute_01=>wwv_flow_api.id(63309681731152189290)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_PREVIOUSEMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427135429'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63353501854170371133)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63353514911571371148)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(63308568020576037771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P3_PROJECT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(63308576802069037784)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63353515639708371151)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63400642822578755583)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63308567525824037770)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt1.project_no AS "Project No",',
'''Current Project'' AS "Type",',
'jt2.project_title AS "Project Title",',
'--jt3.first_name || '' '' || jt4.last_name AS "Manager",',
'jt5.dept_name AS "Dept Name",',
'jt6.project_title AS "Parent Project",',
'jt7.project_active AS "Project Active",',
'NULL AS "End Date Month",',
'NULL AS "End Date Day",',
'NULL AS "End Date Year",',
'NULL AS "Est Person Hours"',
'from apex_collections t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt3,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.project_active[*]'' COLUMNS rid for ordinality, project_active varchar path ''$'') jt7',
'where',
't.collection_name = ''P3_CURRENTPROJECT_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt7.rid',
'',
'UNION',
'',
'select',
'jt1.project_no AS "Project No",',
'''Previous Project'' AS "Type",',
'jt2.project_title AS "Project Title",',
'--jt3.first_name || '' '' || jt4.last_name AS "Manager",',
'jt5.dept_name AS "Dept Name",',
'jt6.project_title AS "Parent Project",',
'NULL AS "Project Active",',
'jt8.end_date_month AS "End Date Month",',
'jt9.end_date_day AS "End Date Day",',
'jt10.end_date_year AS "End Date Year",',
'jt11.est_person_hours AS "Est Person Hours"',
'from apex_collections t,',
'json_table(t.clob001, ''$.project_no[*]'' COLUMNS rid for ordinality, project_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt2,',
'--json_table(t.clob001, ''$.first_name[*]'' COLUMNS rid for ordinality, first_name varchar path ''$'') jt3,',
'--json_table(t.clob001, ''$.last_name[*]'' COLUMNS rid for ordinality, last_name varchar path ''$'') jt4,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt5,',
'json_table(t.clob001, ''$.project_title[*]'' COLUMNS rid for ordinality, project_title varchar path ''$'') jt6,',
'json_table(t.clob001, ''$.end_date_month[*]'' COLUMNS rid for ordinality, end_date_month varchar path ''$'') jt8,',
'json_table(t.clob001, ''$.end_date_day[*]'' COLUMNS rid for ordinality, end_date_day varchar path ''$'') jt9,',
'json_table(t.clob001, ''$.end_date_year[*]'' COLUMNS rid for ordinality, end_date_year varchar path ''$'') jt10,',
'json_table(t.clob001, ''$.est_person_hours[*]'' COLUMNS rid for ordinality, est_person_hours varchar path ''$'') jt11',
'where',
't.collection_name = ''P3_PREVIOUSPROJECT_JSON'' and jt1.rid = jt2.rid and',
'jt2.rid = jt5.rid and',
'jt5.rid = jt6.rid and jt6.rid = jt8.rid and',
'jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63400642902245755584)
,p_name=>'Projects'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MICHAEL.SHANNON002@GMAIL.COM'
,p_internal_uid=>31639735844461913298
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63400643253285755587)
,p_db_column_name=>'Project No'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63400643636170755587)
,p_db_column_name=>'Project Title'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63414731435757065729)
,p_db_column_name=>'Dept Name'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63414732129768065730)
,p_db_column_name=>'Parent Project'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parent Project'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63468383591608949810)
,p_db_column_name=>'Project Active'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Project Active'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63468384314650949813)
,p_db_column_name=>'End Date Month'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'End Date Month'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63468385045427949816)
,p_db_column_name=>'End Date Day'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Date Day'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63468385713694949817)
,p_db_column_name=>'End Date Year'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Date Year'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63468386374278949820)
,p_db_column_name=>'Est Person Hours'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Est Person Hours'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63470715300352447089)
,p_db_column_name=>'Type'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63400695305927131412)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316397883'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'Project No:Project Title:Dept Name:Parent Project:Project Active:End Date Month:End Date Day:End Date Year:Est Person Hours:Type'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63353502248562371134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63400642822578755583)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63353502598350371134)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353503418160371136)
,p_name=>'P3_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353504245366371138)
,p_name=>'P3_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353505005047371138)
,p_name=>'P3_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353505773477371139)
,p_name=>'P3_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353506646067371140)
,p_name=>'P3_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353507381120371141)
,p_name=>'P3_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353508205397371141)
,p_name=>'P3_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353508990215371142)
,p_name=>'P3_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353509823497371143)
,p_name=>'P3_PROJECTTITLE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353510559406371143)
,p_name=>'P3_PROJECTMANAGER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Projectmanager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353511429333371144)
,p_name=>'P3_DEPTASSIGNED'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Deptassigned'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353512240600371145)
,p_name=>'P3_SUBPROJECTS'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Subprojects'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353513048674371146)
,p_name=>'P3_SUBPROJECTOF'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_prompt=>'Subprojectof'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63353513771513371147)
,p_name=>'P3_QUERY'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'"from previous_project retrieve *, dept_name of dept_assigned, project_title of sub_project_of;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63468555543617964518)
,p_name=>'P3_QUERY2'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(63353501854170371133)
,p_item_default=>'"from current_project retrieve *, dept_name of dept_assigned, project_title of sub_project_of;"'
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31786769431534723904)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31786769519553723905)
,p_event_id=>wwv_flow_api.id(31786769431534723904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63353501854170371133)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31786769639337723906)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31786769707775723907)
,p_event_id=>wwv_flow_api.id(31786769639337723906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63353514911571371148)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63468668896439350913)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'service2'
,p_process_sql_clob=>'31549002177175398088:31549002360755398088'
,p_attribute_01=>wwv_flow_api.id(63309909418539240374)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P3_CURRENTPROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63470901647444465111)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'service3'
,p_process_sql_clob=>'31549057148828035757:31549057341636035758'
,p_attribute_01=>wwv_flow_api.id(63309964399419878044)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P3_PREVIOUSPROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427135506'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63356063621747426418)
,p_plug_name=>'doRest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63356075059674426433)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(63308568020576037771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P4_DEPARTMENT_JSON'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(63308576802069037784)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63356075814591426436)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63356707635533511842)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63308567525824037770)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'jt1.dept_no dept_no,',
'jt2.dept_name dept_name',
'from apex_collections t,',
'json_table(t.clob001, ''$.dept_no[*]'' COLUMNS rid for ordinality, dept_no varchar path ''$'') jt1,',
'json_table(t.clob001, ''$.dept_name[*]'' COLUMNS rid for ordinality, dept_name varchar path ''$'') jt2',
'where t.collection_name = ''P4_DEPARTMENT_JSON'' and jt1.rid = jt2.rid',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63356707702008511842)
,p_name=>'Departments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MICHAEL.SHANNON002@GMAIL.COM'
,p_internal_uid=>31595800644224669556
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63356707982735511844)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dept No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63356708380203511845)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63356710639467512614)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'315958036'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'DEPT_NO:DEPT_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63356063980538426419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63356707635533511842)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63356064441544426421)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356065190725426423)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356065985672426425)
,p_name=>'P4_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356066809329426425)
,p_name=>'P4_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356067607068426426)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356068415428426427)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356069224266426427)
,p_name=>'P4_DEPTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356069987185426428)
,p_name=>'P4_DEPTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356070764968426429)
,p_name=>'P4_PROJECTAT'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_prompt=>'Projectat'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356071574474426429)
,p_name=>'P4_DEPTMANAGERS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_prompt=>'Deptmanagers'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356072444177426430)
,p_name=>'P4_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356073238454426431)
,p_name=>'P4_PASS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63356074031168426431)
,p_name=>'P4_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(63356063621747426418)
,p_item_default=>'"from department retrieve *;"'
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435473087423105650)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31786769102515723901)
,p_event_id=>wwv_flow_api.id(31435473087423105650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63356063621747426418)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31786769272165723902)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31786769337304723903)
,p_event_id=>wwv_flow_api.id(31786769272165723902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63356075059674426433)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63356064790002426422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31548088029914850486:31548088297227850487'
,p_attribute_01=>wwv_flow_api.id(63308995355011692773)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_DEPARTMENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Add Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427133303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63472337108982222222)
,p_plug_name=>'Add Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63472337538746222223)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63472337866536222223)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63472337538746222223)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472338710024222226)
,p_name=>'P7_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472339468753222227)
,p_name=>'P7_MODE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472340344601222228)
,p_name=>'P7_MODEL'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472341141718222229)
,p_name=>'P7_RETURNDIMENSIONS'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472341905701222230)
,p_name=>'P7_RETURNFOR'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472342663803222233)
,p_name=>'P7_DEPTNO'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_prompt=>'Deptno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472343495382222233)
,p_name=>'P7_DEPTNAME'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_prompt=>'Deptname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472344350903222234)
,p_name=>'P7_PROJECTAT'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_prompt=>'Projectat'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472345065596222235)
,p_name=>'P7_DEPTMANAGERS'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_prompt=>'Deptmanagers'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472345944235222235)
,p_name=>'P7_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472346671610222236)
,p_name=>'P7_PASS'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63472347509481222237)
,p_name=>'P7_QUERY'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(63472337108982222222)
,p_item_default=>'''insert department (dept_no := ''deptno'', dept_name := ''deptname'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435472088266105640)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435472113549105641)
,p_event_id=>wwv_flow_api.id(31435472088266105640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_DB,P7_MODE,P7_MODEL,P7_RETURNDIMENSIONS,P7_RETURNFOR,P7_USER,P7_PASS,P7_QUERY,P7_PROJECTAT,P7_DEPTMANAGERS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63472338289548222224)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31548088029914850486:31548088297227850487'
,p_attribute_01=>wwv_flow_api.id(63308995355011692773)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P7_DEPARTMENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63472337538746222223)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Add Project'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Project'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427134706'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63480855850997768336)
,p_plug_name=>'Add Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63480856161288768337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63480856652543768337)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63480856161288768337)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480857437652768339)
,p_name=>'P8_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480858226979768341)
,p_name=>'P8_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480858975570768342)
,p_name=>'P8_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480859781159768344)
,p_name=>'P8_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480860619739768345)
,p_name=>'P8_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480861359387768346)
,p_name=>'P8_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480862192154768346)
,p_name=>'P8_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480863057203768347)
,p_name=>'P8_PROJECTNO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Projectno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480863849781768348)
,p_name=>'P8_PROJECTTITLE'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Projecttitle'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480864610664768349)
,p_name=>'P8_PROJECTMANAGER'
,p_item_sequence=>38
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Projectmanager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480865389780768350)
,p_name=>'P8_DEPTASSIGNED'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Deptassigned'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480866186486768350)
,p_name=>'P8_SUBPROJECTS'
,p_item_sequence=>58
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Subprojects'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480867042568768351)
,p_name=>'P8_SUBPROJECTOF'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Subprojectof'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63480867785333768352)
,p_name=>'P8_QUERY'
,p_item_sequence=>128
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''INSERT Current-Project (project_no := ''projectno'', project_title := ''projecttitle'', project_active := ''projectactive'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481039561339170857)
,p_name=>'P8_TYPE'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481379351273210888)
,p_name=>'P8_QUERY2'
,p_item_sequence=>138
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_item_default=>'''insert previous_project (project_no := ''projectno'', project_title := ''projecttitle'', end_date_month := ''enddatemonth'', end_date_day := ''enddateday'', end_date_year := ''enddateyear'', est_person_hours := ''estpersonhours'');'''
,p_prompt=>'Query2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481417656105854601)
,p_name=>'P8_PROJECTACTIVE'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Projectactive'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481606046961895891)
,p_name=>'P8_ENDDATEMONTH'
,p_item_sequence=>88
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Enddatemonth'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481707534552277655)
,p_name=>'P8_ENDDATEYEAR'
,p_item_sequence=>108
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Enddateyear'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481759438728899790)
,p_name=>'P8_ENDDATEDAY'
,p_item_sequence=>98
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Enddateday'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63481765317812905763)
,p_name=>'P8_ESTPERSONHOURS'
,p_item_sequence=>118
,p_item_plug_id=>wwv_flow_api.id(63480855850997768336)
,p_prompt=>'Estpersonhours'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435471834994105638)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435471950261105639)
,p_event_id=>wwv_flow_api.id(31435471834994105638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_DB,P8_USER,P8_PASS,P8_MODE,P8_MODEL,P8_RETURNDIMENSIONS,P8_RETURNFOR,P8_QUERY,P8_QUERY2,P8_PROJECTMANAGER,P8_DEPTASSIGNED,P8_SUBPROJECTS,P8_SUBPROJECTOF'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435472838574105648)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63480856161288768337)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435472918922105649)
,p_event_id=>wwv_flow_api.id(31435472838574105648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_QUERY,P8_QUERY2'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63480857053173768338)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31548901051817386160:31548901238715386160'
,p_attribute_01=>wwv_flow_api.id(63309808296499228446)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_PROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63480856161288768337)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63481535842669885857)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'current_project_service'
,p_process_sql_clob=>'31549002177175398088:31549002360755398088'
,p_attribute_01=>wwv_flow_api.id(63309909418539240374)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_CURRENTPROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63480856161288768337)
,p_process_when=>'P8_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Current Project"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63482191101589304770)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'previous_project_service'
,p_process_sql_clob=>'31549057148828035757:31549057341636035758'
,p_attribute_01=>wwv_flow_api.id(63309964399419878044)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P8_PREVIOUSPROJECT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63480856161288768337)
,p_process_when=>'P8_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Previous Project"'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(63308594193244037821)
,p_name=>'Add Person'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Person'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CAMERONMOELLER1@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20160427134503'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63496956272179874198)
,p_plug_name=>'Add Person'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63308568020576037771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63496956671003874198)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63308588974328037805)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63496957112397874199)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496957911837874202)
,p_name=>'P9_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'OracleNoSQL'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496958665375874203)
,p_name=>'P9_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'WDBE8'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496959469476874204)
,p_name=>'P9_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'localhost:8021'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496960272946874207)
,p_name=>'P9_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'native_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496961076845874208)
,p_name=>'P9_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'E8'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496961928052874209)
,p_name=>'P9_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496962711664874210)
,p_name=>'P9_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'SIM_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588450554037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496963510719874210)
,p_name=>'P9_PERSONID'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'0'
,p_prompt=>'Personid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496964343446874211)
,p_name=>'P9_FIRSTNAME'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Firstname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588663069037802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496965146245874212)
,p_name=>'P9_LASTNAME'
,p_item_sequence=>38
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Lastname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588663069037802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496965886562874213)
,p_name=>'P9_HOMEADDRESS'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Homeaddress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496966724145874214)
,p_name=>'P9_ZIPCODE'
,p_item_sequence=>58
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'0'
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496967518503874215)
,p_name=>'P9_HOMEPHONE'
,p_item_sequence=>68
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Homephone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496968315735874216)
,p_name=>'P9_USCITIZEN'
,p_item_sequence=>78
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'false'
,p_prompt=>'Uscitizen'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588663069037802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496969060870874216)
,p_name=>'P9_SPOUSE'
,p_item_sequence=>88
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Spouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496969950420874217)
,p_name=>'P9_CHILDREN'
,p_item_sequence=>98
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Children'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496970730097874218)
,p_name=>'P9_PARENTS'
,p_item_sequence=>108
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Parents'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63496971480928874219)
,p_name=>'P9_QUERY'
,p_item_sequence=>178
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert person (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'');'''
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Person"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497088030503884650)
,p_name=>'P9_BONUS'
,p_item_sequence=>128
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'0'
,p_prompt=>'Bonus'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497313199918902553)
,p_name=>'P9_EMPLOYEEID'
,p_item_sequence=>138
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'0'
,p_prompt=>'Employeeid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497371251123909013)
,p_name=>'P9_SALARY'
,p_item_sequence=>148
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'0'
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497384045676912766)
,p_name=>'P9_SALARYEXCEPTION'
,p_item_sequence=>158
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'false'
,p_prompt=>'Salaryexception'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497450193911917899)
,p_name=>'P9_ISFIRED'
,p_item_sequence=>168
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'false'
,p_prompt=>'Isfired'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497881681757974732)
,p_name=>'P9_QUERY_PRESIDENT'
,p_item_sequence=>188
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert President (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', employee_id := ''employeeid'', salary := ''salary'''
||', salary_exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query President'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"President"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497971256716609869)
,p_name=>'P9_QUERY_MANAGER'
,p_item_sequence=>208
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert manager (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', employee_id := ''employeeid'', salary := ''salary'', '
||'salary_exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query Manager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Manager"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63497980356079980632)
,p_name=>'P9_QUERY_INTERIMMANAGER'
,p_item_sequence=>198
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert interim_manager (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', employee_id := ''employeeid'', salary := ''s'
||'alary'', salary_exception := ''salaryexception'', bonus := ''bonus'');'''
,p_prompt=>'Query Interimmanager'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Interim Manager"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63498074237621992873)
,p_name=>'P9_QUERY_PROJECTEMPLOYEE'
,p_item_sequence=>218
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert project_employee (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', employee_id := ''employeeid'', salary := '''
||'salary'', salary_exception := ''salaryexception'');'''
,p_prompt=>'Query Projectemployee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Project Employee"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63498094720960625083)
,p_name=>'P9_QUERY_EMPLOYEE'
,p_item_sequence=>228
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert employee (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', employee_id := ''employeeid'', salary := ''salary'','
||' salary_exception := ''salaryexception'');'''
,p_prompt=>'Query Employee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Employee"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63498220397537015063)
,p_name=>'P9_QUERY_PREVIOUSEMPLOYEE'
,p_item_sequence=>238
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_use_cache_before_default=>'NO'
,p_item_default=>'''insert previous_employee (person_id := ''personid'', first_name := ''firstname'', last_name := ''lastname'', home_address := ''homeaddress'', zipcode := ''zipcode'', home_phone := ''homephone'', us_citizen := ''uscitizen'', salary := ''salary'', isfired := ''isfired'
||''');'''
,p_prompt=>'Query Previousemployee'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when=>'P9_TYPE'
,p_display_when2=>'"Previous Employee"'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(63308588498058037801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63498454335260646910)
,p_name=>'P9_TYPE'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(63496956272179874198)
,p_item_default=>'""'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(63308588663069037802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435471644910105636)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_DB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435471752520105637)
,p_event_id=>wwv_flow_api.id(31435471644910105636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_DB,P9_USER,P9_PASS,P9_MODE,P9_MODEL,P9_RETURNDIMENSIONS,P9_RETURNFOR,P9_QUERY,P9_QUERY_PRESIDENT,P9_QUERY_INTERIMMANAGER,P9_QUERY_MANAGER,P9_QUERY_PROJECTEMPLOYEE,P9_QUERY_EMPLOYEE,P9_QUERY_PREVIOUSEMPLOYEE,P9_SPOUSE,P9_CHILDREN,P9_PARENTS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31435472669604105646)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63496956671003874198)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31435472753054105647)
,p_event_id=>wwv_flow_api.id(31435472669604105646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_QUERY,P9_QUERY_PRESIDENT,P9_QUERY_INTERIMMANAGER,P9_QUERY_MANAGER,P9_QUERY_PROJECTEMPLOYEE,P9_QUERY_EMPLOYEE,P9_QUERY_PREVIOUSEMPLOYEE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63496957552816874199)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'31548416488578882131:31548416656201882132'
,p_attribute_01=>wwv_flow_api.id(63309323713985724418)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_PERSON_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63497742325612951324)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_president_service'
,p_process_sql_clob=>'31548663122911957793:31548663338515957794'
,p_attribute_01=>wwv_flow_api.id(63309570396299800080)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_PRESIDENT_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"President"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63498720702778680799)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_interimmanager_service'
,p_process_sql_clob=>'31548626237136321538:31548626455280321538'
,p_attribute_01=>wwv_flow_api.id(63309533513064163824)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_INTERIMMANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Interim Manager"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63498818945319074062)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_manager_service'
,p_process_sql_clob=>'31548578879095308722:31548579093714308722'
,p_attribute_01=>wwv_flow_api.id(63309486151498151008)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_MANAGER_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Manager"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63498934609981091928)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_projectemployee_service'
,p_process_sql_clob=>'31548550027453291826:31548550259686291827'
,p_attribute_01=>wwv_flow_api.id(63309457317470134113)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_PROJECTEMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Project Employee"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63499023023859105848)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_employee_service'
,p_process_sql_clob=>'31548475426750273990:31548475693673273991'
,p_attribute_01=>wwv_flow_api.id(63309382751457116277)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_EMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Employee"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63499281662186123982)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_previousemployee_service'
,p_process_sql_clob=>'31548774412166347004:31548774673368347004'
,p_attribute_01=>wwv_flow_api.id(63309681731152189290)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P9_PREVIOUSEMPLOYEE_JSON'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Previous Employee"'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63518327754898504023)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'P9_person_service'
,p_process_sql_clob=>'31548416488578882131:31548416656201882132'
,p_attribute_01=>wwv_flow_api.id(63309323713985724418)
,p_attribute_02=>'ITEMS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63496956671003874198)
,p_process_when=>'P9_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'"Person"'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_department_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63308995087698692772)
,p_name=>'S16_Department_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63308995355011692773)
,p_ws_id=>wwv_flow_api.id(63308995087698692772)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308995640103692776)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356065636353426424)
,p_parameter_id=>wwv_flow_api.id(63308995640103692776)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472339088072222227)
,p_parameter_id=>wwv_flow_api.id(63308995640103692776)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308995874968692777)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356066394648426425)
,p_parameter_id=>wwv_flow_api.id(63308995874968692777)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472339936531222228)
,p_parameter_id=>wwv_flow_api.id(63308995874968692777)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308996220584692777)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356067179450426426)
,p_parameter_id=>wwv_flow_api.id(63308996220584692777)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472340712471222228)
,p_parameter_id=>wwv_flow_api.id(63308996220584692777)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308996484330692777)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356068032080426426)
,p_parameter_id=>wwv_flow_api.id(63308996484330692777)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472341512011222229)
,p_parameter_id=>wwv_flow_api.id(63308996484330692777)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308996784458692777)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356068782791426427)
,p_parameter_id=>wwv_flow_api.id(63308996784458692777)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472342352306222232)
,p_parameter_id=>wwv_flow_api.id(63308996784458692777)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308997075430692778)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'deptno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356069656367426428)
,p_parameter_id=>wwv_flow_api.id(63308997075430692778)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DEPTNO'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472343072199222233)
,p_parameter_id=>wwv_flow_api.id(63308997075430692778)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DEPTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308997384768692778)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'deptname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356070414840426428)
,p_parameter_id=>wwv_flow_api.id(63308997384768692778)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DEPTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472343915906222234)
,p_parameter_id=>wwv_flow_api.id(63308997384768692778)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DEPTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308997716849692778)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'projectat'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356071241424426429)
,p_parameter_id=>wwv_flow_api.id(63308997716849692778)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PROJECTAT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472344735447222234)
,p_parameter_id=>wwv_flow_api.id(63308997716849692778)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PROJECTAT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308998048961692778)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'deptmanagers'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356071962645426430)
,p_parameter_id=>wwv_flow_api.id(63308998048961692778)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DEPTMANAGERS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472345508528222235)
,p_parameter_id=>wwv_flow_api.id(63308998048961692778)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_DEPTMANAGERS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308998343749692780)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356074451416426432)
,p_parameter_id=>wwv_flow_api.id(63308998343749692780)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472347899708222237)
,p_parameter_id=>wwv_flow_api.id(63308998343749692780)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63308998560459692780)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310077061620888437)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356072802691426430)
,p_parameter_id=>wwv_flow_api.id(63310077061620888437)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472346277925222235)
,p_parameter_id=>wwv_flow_api.id(63310077061620888437)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310077413841888437)
,p_ws_opers_id=>wwv_flow_api.id(63308995355011692773)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63356073593069426431)
,p_parameter_id=>wwv_flow_api.id(63310077413841888437)
,p_process_id=>wwv_flow_api.id(63356064790002426422)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63472347139432222236)
,p_parameter_id=>wwv_flow_api.id(63310077413841888437)
,p_process_id=>wwv_flow_api.id(63472338289548222224)
,p_map_type=>'ITEM'
,p_parm_value=>'P7_PASS'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_person_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309323546362724417)
,p_name=>'S16_Person_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309323713985724418)
,p_ws_id=>wwv_flow_api.id(63309323546362724417)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309324020921724420)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310833333939314171)
,p_parameter_id=>wwv_flow_api.id(63309324020921724420)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496958288058874203)
,p_parameter_id=>wwv_flow_api.id(63309324020921724420)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518328009635504025)
,p_parameter_id=>wwv_flow_api.id(63309324020921724420)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309324295962724420)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310834085008314172)
,p_parameter_id=>wwv_flow_api.id(63309324295962724420)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496959117500874203)
,p_parameter_id=>wwv_flow_api.id(63309324295962724420)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518328387371504026)
,p_parameter_id=>wwv_flow_api.id(63309324295962724420)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309324641882724421)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310834912722314172)
,p_parameter_id=>wwv_flow_api.id(63309324641882724421)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496959947721874205)
,p_parameter_id=>wwv_flow_api.id(63309324641882724421)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518328822851504026)
,p_parameter_id=>wwv_flow_api.id(63309324641882724421)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309324926750724421)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310835727141314173)
,p_parameter_id=>wwv_flow_api.id(63309324926750724421)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496960704292874207)
,p_parameter_id=>wwv_flow_api.id(63309324926750724421)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518329220192504027)
,p_parameter_id=>wwv_flow_api.id(63309324926750724421)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309325162055724421)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310836505055314176)
,p_parameter_id=>wwv_flow_api.id(63309325162055724421)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496961498278874208)
,p_parameter_id=>wwv_flow_api.id(63309325162055724421)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518329560320504027)
,p_parameter_id=>wwv_flow_api.id(63309325162055724421)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309325493660724421)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310837289234314176)
,p_parameter_id=>wwv_flow_api.id(63309325493660724421)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496962311483874209)
,p_parameter_id=>wwv_flow_api.id(63309325493660724421)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518329968416504027)
,p_parameter_id=>wwv_flow_api.id(63309325493660724421)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309325783025724422)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310838128851314177)
,p_parameter_id=>wwv_flow_api.id(63309325783025724422)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496963067018874210)
,p_parameter_id=>wwv_flow_api.id(63309325783025724422)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518330400063504028)
,p_parameter_id=>wwv_flow_api.id(63309325783025724422)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309326107175724422)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310838883213314178)
,p_parameter_id=>wwv_flow_api.id(63309326107175724422)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496963882929874211)
,p_parameter_id=>wwv_flow_api.id(63309326107175724422)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518330833761504028)
,p_parameter_id=>wwv_flow_api.id(63309326107175724422)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309326383865724422)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310839756831314178)
,p_parameter_id=>wwv_flow_api.id(63309326383865724422)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496964695416874212)
,p_parameter_id=>wwv_flow_api.id(63309326383865724422)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518331209780504028)
,p_parameter_id=>wwv_flow_api.id(63309326383865724422)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309326755108724422)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310840513705314179)
,p_parameter_id=>wwv_flow_api.id(63309326755108724422)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496965473461874213)
,p_parameter_id=>wwv_flow_api.id(63309326755108724422)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518331579242504029)
,p_parameter_id=>wwv_flow_api.id(63309326755108724422)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309327009829724423)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310841257814314180)
,p_parameter_id=>wwv_flow_api.id(63309327009829724423)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496966295159874213)
,p_parameter_id=>wwv_flow_api.id(63309327009829724423)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518331974925504029)
,p_parameter_id=>wwv_flow_api.id(63309327009829724423)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309327356811724423)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310842094629314181)
,p_parameter_id=>wwv_flow_api.id(63309327356811724423)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496967127026874214)
,p_parameter_id=>wwv_flow_api.id(63309327356811724423)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518332367335504029)
,p_parameter_id=>wwv_flow_api.id(63309327356811724423)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309327636745724423)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310842934891314182)
,p_parameter_id=>wwv_flow_api.id(63309327636745724423)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496967869412874215)
,p_parameter_id=>wwv_flow_api.id(63309327636745724423)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518332816057504030)
,p_parameter_id=>wwv_flow_api.id(63309327636745724423)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309327917276724423)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310843677205314182)
,p_parameter_id=>wwv_flow_api.id(63309327917276724423)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496968710574874216)
,p_parameter_id=>wwv_flow_api.id(63309327917276724423)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518333200627504030)
,p_parameter_id=>wwv_flow_api.id(63309327917276724423)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309328177546724423)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310844513759314183)
,p_parameter_id=>wwv_flow_api.id(63309328177546724423)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496969483698874217)
,p_parameter_id=>wwv_flow_api.id(63309328177546724423)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518333641079504030)
,p_parameter_id=>wwv_flow_api.id(63309328177546724423)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309328541732724425)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310845322304314184)
,p_parameter_id=>wwv_flow_api.id(63309328541732724425)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_CHILDREN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496970345466874218)
,p_parameter_id=>wwv_flow_api.id(63309328541732724425)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_CHILDREN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518334048509504030)
,p_parameter_id=>wwv_flow_api.id(63309328541732724425)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309328816972724425)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310846081166314185)
,p_parameter_id=>wwv_flow_api.id(63309328816972724425)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PARENTS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496971143418874218)
,p_parameter_id=>wwv_flow_api.id(63309328816972724425)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PARENTS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518334435356504031)
,p_parameter_id=>wwv_flow_api.id(63309328816972724425)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309329142999724425)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63310846897240314186)
,p_parameter_id=>wwv_flow_api.id(63309329142999724425)
,p_process_id=>wwv_flow_api.id(63310832536363314170)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63496971913648874219)
,p_parameter_id=>wwv_flow_api.id(63309329142999724425)
,p_process_id=>wwv_flow_api.id(63496957552816874199)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63518334818033504031)
,p_parameter_id=>wwv_flow_api.id(63309329142999724425)
,p_process_id=>wwv_flow_api.id(63518327754898504023)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309329358146724425)
,p_ws_opers_id=>wwv_flow_api.id(63309323713985724418)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_employee_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309382484534116276)
,p_name=>'S16_Employee_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309382751457116277)
,p_ws_id=>wwv_flow_api.id(63309382484534116276)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309382971931116277)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492923956195415402)
,p_parameter_id=>wwv_flow_api.id(63309382971931116277)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499023295600105851)
,p_parameter_id=>wwv_flow_api.id(63309382971931116277)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309383352707116278)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492924327625415402)
,p_parameter_id=>wwv_flow_api.id(63309383352707116278)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499023724382105851)
,p_parameter_id=>wwv_flow_api.id(63309383352707116278)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309383625613116279)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492924729138415402)
,p_parameter_id=>wwv_flow_api.id(63309383625613116279)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499024076661105851)
,p_parameter_id=>wwv_flow_api.id(63309383625613116279)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309383956270116279)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492925096608415403)
,p_parameter_id=>wwv_flow_api.id(63309383956270116279)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499024512178105852)
,p_parameter_id=>wwv_flow_api.id(63309383956270116279)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309384238145116279)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492925549616415403)
,p_parameter_id=>wwv_flow_api.id(63309384238145116279)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499024906090105852)
,p_parameter_id=>wwv_flow_api.id(63309384238145116279)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309384514655116279)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492925931263415403)
,p_parameter_id=>wwv_flow_api.id(63309384514655116279)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499035262537105852)
,p_parameter_id=>wwv_flow_api.id(63309384514655116279)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309384801535116280)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492926267806415404)
,p_parameter_id=>wwv_flow_api.id(63309384801535116280)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499035689226105853)
,p_parameter_id=>wwv_flow_api.id(63309384801535116280)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309405088217116280)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492926721005415404)
,p_parameter_id=>wwv_flow_api.id(63309405088217116280)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499036121180105853)
,p_parameter_id=>wwv_flow_api.id(63309405088217116280)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309405394583116280)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492927126687415404)
,p_parameter_id=>wwv_flow_api.id(63309405394583116280)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499036497580105853)
,p_parameter_id=>wwv_flow_api.id(63309405394583116280)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309405668520116280)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492927489362415405)
,p_parameter_id=>wwv_flow_api.id(63309405668520116280)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499036915339105854)
,p_parameter_id=>wwv_flow_api.id(63309405668520116280)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309406023515116281)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'employeemanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492927930874415405)
,p_parameter_id=>wwv_flow_api.id(63309406023515116281)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499037290691105855)
,p_parameter_id=>wwv_flow_api.id(63309406023515116281)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309406285247116281)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492932341071415408)
,p_parameter_id=>wwv_flow_api.id(63309406285247116281)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_EMPLOYEE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499041751170105861)
,p_parameter_id=>wwv_flow_api.id(63309406285247116281)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_EMPLOYEE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309406620062116281)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416945385416545570)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492928331716415405)
,p_parameter_id=>wwv_flow_api.id(63416945385416545570)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499037680337105855)
,p_parameter_id=>wwv_flow_api.id(63416945385416545570)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416945715512545571)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492928745841415406)
,p_parameter_id=>wwv_flow_api.id(63416945715512545571)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499038153078105855)
,p_parameter_id=>wwv_flow_api.id(63416945715512545571)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416946031375545571)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492929072011415406)
,p_parameter_id=>wwv_flow_api.id(63416946031375545571)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499038503208105859)
,p_parameter_id=>wwv_flow_api.id(63416946031375545571)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416946263826545571)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492929466215415406)
,p_parameter_id=>wwv_flow_api.id(63416946263826545571)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499038867630105859)
,p_parameter_id=>wwv_flow_api.id(63416946263826545571)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416946569854545572)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492929920640415406)
,p_parameter_id=>wwv_flow_api.id(63416946569854545572)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499039293366105859)
,p_parameter_id=>wwv_flow_api.id(63416946569854545572)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416946878637545572)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492930345719415407)
,p_parameter_id=>wwv_flow_api.id(63416946878637545572)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499039723839105860)
,p_parameter_id=>wwv_flow_api.id(63416946878637545572)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416947255188545572)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492930719543415407)
,p_parameter_id=>wwv_flow_api.id(63416947255188545572)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499040066467105860)
,p_parameter_id=>wwv_flow_api.id(63416947255188545572)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416947522844545573)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492931104353415407)
,p_parameter_id=>wwv_flow_api.id(63416947522844545573)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499040531639105860)
,p_parameter_id=>wwv_flow_api.id(63416947522844545573)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416947765538545573)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492931555316415408)
,p_parameter_id=>wwv_flow_api.id(63416947765538545573)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499040929170105861)
,p_parameter_id=>wwv_flow_api.id(63416947765538545573)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63416948066589545573)
,p_ws_opers_id=>wwv_flow_api.id(63309382751457116277)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492931956237415408)
,p_parameter_id=>wwv_flow_api.id(63416948066589545573)
,p_process_id=>wwv_flow_api.id(63492923649110415399)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499041285284105861)
,p_parameter_id=>wwv_flow_api.id(63416948066589545573)
,p_process_id=>wwv_flow_api.id(63499023023859105848)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_projectemployee_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309457085237134112)
,p_name=>'S16_ProjectEmployee_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309457317470134113)
,p_ws_id=>wwv_flow_api.id(63309457085237134112)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309457630186134113)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492754765443404540)
,p_parameter_id=>wwv_flow_api.id(63309457630186134113)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498934919898091930)
,p_parameter_id=>wwv_flow_api.id(63309457630186134113)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309457929085134114)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492775257312404540)
,p_parameter_id=>wwv_flow_api.id(63309457929085134114)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498955333437091931)
,p_parameter_id=>wwv_flow_api.id(63309457929085134114)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309458234953134114)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492775620245404541)
,p_parameter_id=>wwv_flow_api.id(63309458234953134114)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498955724061091931)
,p_parameter_id=>wwv_flow_api.id(63309458234953134114)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309458478341134114)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492775999082404541)
,p_parameter_id=>wwv_flow_api.id(63309458478341134114)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498956146235091931)
,p_parameter_id=>wwv_flow_api.id(63309458478341134114)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309458825396134114)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492776358362404541)
,p_parameter_id=>wwv_flow_api.id(63309458825396134114)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498956539087091932)
,p_parameter_id=>wwv_flow_api.id(63309458825396134114)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309459125516134114)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492776824905404542)
,p_parameter_id=>wwv_flow_api.id(63309459125516134114)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498956903715091932)
,p_parameter_id=>wwv_flow_api.id(63309459125516134114)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309459452945134115)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492777163628404542)
,p_parameter_id=>wwv_flow_api.id(63309459452945134115)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498957329554091932)
,p_parameter_id=>wwv_flow_api.id(63309459452945134115)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309459682584134115)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'currentprojects'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492777603046404542)
,p_parameter_id=>wwv_flow_api.id(63309459682584134115)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498957690115091933)
,p_parameter_id=>wwv_flow_api.id(63309459682584134115)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309460031919134115)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492783580773404547)
,p_parameter_id=>wwv_flow_api.id(63309460031919134115)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_PROJECTEMPLOYEE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498963679278091939)
,p_parameter_id=>wwv_flow_api.id(63309460031919134115)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_PROJECTEMPLOYEE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309460307315134116)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417401098354212077)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492777973475404542)
,p_parameter_id=>wwv_flow_api.id(63417401098354212077)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498958140273091934)
,p_parameter_id=>wwv_flow_api.id(63417401098354212077)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417401382628212078)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492778445298404543)
,p_parameter_id=>wwv_flow_api.id(63417401382628212078)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498958547572091934)
,p_parameter_id=>wwv_flow_api.id(63417401382628212078)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417401693066212078)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492778798774404544)
,p_parameter_id=>wwv_flow_api.id(63417401693066212078)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498958936773091934)
,p_parameter_id=>wwv_flow_api.id(63417401693066212078)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417402027722212078)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492779249647404544)
,p_parameter_id=>wwv_flow_api.id(63417402027722212078)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498959262011091935)
,p_parameter_id=>wwv_flow_api.id(63417402027722212078)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417402333211212079)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492779630690404544)
,p_parameter_id=>wwv_flow_api.id(63417402333211212079)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498959749787091935)
,p_parameter_id=>wwv_flow_api.id(63417402333211212079)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417402581561212079)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492780010162404545)
,p_parameter_id=>wwv_flow_api.id(63417402581561212079)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498960101172091935)
,p_parameter_id=>wwv_flow_api.id(63417402581561212079)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417402946752212079)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492780456080404545)
,p_parameter_id=>wwv_flow_api.id(63417402946752212079)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498960490603091936)
,p_parameter_id=>wwv_flow_api.id(63417402946752212079)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417403197724212080)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492780826147404545)
,p_parameter_id=>wwv_flow_api.id(63417403197724212080)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498960910561091936)
,p_parameter_id=>wwv_flow_api.id(63417403197724212080)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417403488426212080)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492781224855404545)
,p_parameter_id=>wwv_flow_api.id(63417403488426212080)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498961263178091937)
,p_parameter_id=>wwv_flow_api.id(63417403488426212080)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417403806607212080)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492781582537404546)
,p_parameter_id=>wwv_flow_api.id(63417403806607212080)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498961700080091937)
,p_parameter_id=>wwv_flow_api.id(63417403806607212080)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417404089933212080)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492782057551404546)
,p_parameter_id=>wwv_flow_api.id(63417404089933212080)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498962064473091937)
,p_parameter_id=>wwv_flow_api.id(63417404089933212080)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417404330944212081)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492782379629404546)
,p_parameter_id=>wwv_flow_api.id(63417404330944212081)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498962460525091938)
,p_parameter_id=>wwv_flow_api.id(63417404330944212081)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417404610308212081)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492782768600404547)
,p_parameter_id=>wwv_flow_api.id(63417404610308212081)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498962939580091938)
,p_parameter_id=>wwv_flow_api.id(63417404610308212081)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417404990320212081)
,p_ws_opers_id=>wwv_flow_api.id(63309457317470134113)
,p_name=>'employeemanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492783250865404547)
,p_parameter_id=>wwv_flow_api.id(63417404990320212081)
,p_process_id=>wwv_flow_api.id(63492754544411404537)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498963348648091938)
,p_parameter_id=>wwv_flow_api.id(63417404990320212081)
,p_process_id=>wwv_flow_api.id(63498934609981091928)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_manager_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309485936879151008)
,p_name=>'S16_Manager_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309486151498151008)
,p_ws_id=>wwv_flow_api.id(63309485936879151008)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309486441325151009)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492657116423393289)
,p_parameter_id=>wwv_flow_api.id(63309486441325151009)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498819219050074064)
,p_parameter_id=>wwv_flow_api.id(63309486441325151009)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309486691407151009)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492657507322393290)
,p_parameter_id=>wwv_flow_api.id(63309486691407151009)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498819586312074064)
,p_parameter_id=>wwv_flow_api.id(63309486691407151009)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309486991693151009)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492657929193393290)
,p_parameter_id=>wwv_flow_api.id(63309486991693151009)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498819998084074065)
,p_parameter_id=>wwv_flow_api.id(63309486991693151009)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309487302668151009)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492658334868393291)
,p_parameter_id=>wwv_flow_api.id(63309487302668151009)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498820374746074065)
,p_parameter_id=>wwv_flow_api.id(63309487302668151009)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309487583047151009)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492658695947393291)
,p_parameter_id=>wwv_flow_api.id(63309487583047151009)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498820845382074066)
,p_parameter_id=>wwv_flow_api.id(63309487583047151009)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309487952627151010)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492659102618393291)
,p_parameter_id=>wwv_flow_api.id(63309487952627151010)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498821203825074066)
,p_parameter_id=>wwv_flow_api.id(63309487952627151010)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309488215375151010)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492659495823393292)
,p_parameter_id=>wwv_flow_api.id(63309488215375151010)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498821648889074066)
,p_parameter_id=>wwv_flow_api.id(63309488215375151010)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309488550097151010)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492659892289393292)
,p_parameter_id=>wwv_flow_api.id(63309488550097151010)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498822013441074067)
,p_parameter_id=>wwv_flow_api.id(63309488550097151010)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309488811659151011)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'employeesmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492660285663393292)
,p_parameter_id=>wwv_flow_api.id(63309488811659151011)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498822412166074067)
,p_parameter_id=>wwv_flow_api.id(63309488811659151011)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309489147236151011)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'projectsmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492660726801393293)
,p_parameter_id=>wwv_flow_api.id(63309489147236151011)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498822796859074067)
,p_parameter_id=>wwv_flow_api.id(63309489147236151011)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309489375712151011)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'managerdept'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492661103496393293)
,p_parameter_id=>wwv_flow_api.id(63309489375712151011)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498823228691074068)
,p_parameter_id=>wwv_flow_api.id(63309489375712151011)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309489703910151012)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492667135668393299)
,p_parameter_id=>wwv_flow_api.id(63309489703910151012)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_MANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498869274805074082)
,p_parameter_id=>wwv_flow_api.id(63309489703910151012)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_MANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309489979612151013)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417615774473228836)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492661505553393293)
,p_parameter_id=>wwv_flow_api.id(63417615774473228836)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498823648463074068)
,p_parameter_id=>wwv_flow_api.id(63417615774473228836)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417616069941228836)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492661878661393293)
,p_parameter_id=>wwv_flow_api.id(63417616069941228836)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498823964445074068)
,p_parameter_id=>wwv_flow_api.id(63417616069941228836)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417616361889228837)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492662270408393294)
,p_parameter_id=>wwv_flow_api.id(63417616361889228837)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498824390938074068)
,p_parameter_id=>wwv_flow_api.id(63417616361889228837)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417616696709228837)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492662659605393294)
,p_parameter_id=>wwv_flow_api.id(63417616696709228837)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498824765932074069)
,p_parameter_id=>wwv_flow_api.id(63417616696709228837)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417616990125228837)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492663099351393295)
,p_parameter_id=>wwv_flow_api.id(63417616990125228837)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498865207248074069)
,p_parameter_id=>wwv_flow_api.id(63417616990125228837)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417617278438228837)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492663549733393295)
,p_parameter_id=>wwv_flow_api.id(63417617278438228837)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498865566746074070)
,p_parameter_id=>wwv_flow_api.id(63417617278438228837)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417617604091228838)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492663895044393296)
,p_parameter_id=>wwv_flow_api.id(63417617604091228838)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498866010229074070)
,p_parameter_id=>wwv_flow_api.id(63417617604091228838)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417617884128228838)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492664282923393296)
,p_parameter_id=>wwv_flow_api.id(63417617884128228838)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498866518369074070)
,p_parameter_id=>wwv_flow_api.id(63417617884128228838)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417618177436228839)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492664739273393297)
,p_parameter_id=>wwv_flow_api.id(63417618177436228839)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498866886110074070)
,p_parameter_id=>wwv_flow_api.id(63417618177436228839)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417618554644228839)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492665120407393297)
,p_parameter_id=>wwv_flow_api.id(63417618554644228839)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498867328199074072)
,p_parameter_id=>wwv_flow_api.id(63417618554644228839)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417618828657228839)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492665495343393297)
,p_parameter_id=>wwv_flow_api.id(63417618828657228839)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498867745741074072)
,p_parameter_id=>wwv_flow_api.id(63417618828657228839)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417619096119228840)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492665896106393298)
,p_parameter_id=>wwv_flow_api.id(63417619096119228840)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498868156653074081)
,p_parameter_id=>wwv_flow_api.id(63417619096119228840)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417619430926228840)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492666311993393298)
,p_parameter_id=>wwv_flow_api.id(63417619430926228840)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498868463109074081)
,p_parameter_id=>wwv_flow_api.id(63417619430926228840)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417619726218228840)
,p_ws_opers_id=>wwv_flow_api.id(63309486151498151008)
,p_name=>'employeemanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492666705742393299)
,p_parameter_id=>wwv_flow_api.id(63417619726218228840)
,p_process_id=>wwv_flow_api.id(63492656810087393288)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498868930908074082)
,p_parameter_id=>wwv_flow_api.id(63417619726218228840)
,p_process_id=>wwv_flow_api.id(63498818945319074062)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_interimmanager_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309533294920163824)
,p_name=>'S16_InterimManager_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309533513064163824)
,p_ws_id=>wwv_flow_api.id(63309533294920163824)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309533847491163825)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492581512066383081)
,p_parameter_id=>wwv_flow_api.id(63309533847491163825)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498720988526680801)
,p_parameter_id=>wwv_flow_api.id(63309533847491163825)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309534157113163825)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492581949742383082)
,p_parameter_id=>wwv_flow_api.id(63309534157113163825)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498721393571680802)
,p_parameter_id=>wwv_flow_api.id(63309534157113163825)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309534439438163826)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492582272550383082)
,p_parameter_id=>wwv_flow_api.id(63309534439438163826)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498721824764680802)
,p_parameter_id=>wwv_flow_api.id(63309534439438163826)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309534678838163826)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492582721626383082)
,p_parameter_id=>wwv_flow_api.id(63309534678838163826)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498722168343680802)
,p_parameter_id=>wwv_flow_api.id(63309534678838163826)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309535035419163827)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492583133591383082)
,p_parameter_id=>wwv_flow_api.id(63309535035419163827)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498722605435680803)
,p_parameter_id=>wwv_flow_api.id(63309535035419163827)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309555273194163827)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492583493317383083)
,p_parameter_id=>wwv_flow_api.id(63309555273194163827)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498723008241680803)
,p_parameter_id=>wwv_flow_api.id(63309555273194163827)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309555638609163827)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492583890633383083)
,p_parameter_id=>wwv_flow_api.id(63309555638609163827)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498723383946680804)
,p_parameter_id=>wwv_flow_api.id(63309555638609163827)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309555928835163828)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492591944080383091)
,p_parameter_id=>wwv_flow_api.id(63309555928835163828)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_INTERIMMANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498731394020680812)
,p_parameter_id=>wwv_flow_api.id(63309555928835163828)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_INTERIMMANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309556223342163828)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438834690285019319)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'projectsmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492584264083383084)
,p_parameter_id=>wwv_flow_api.id(63438834690285019319)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498723813715680804)
,p_parameter_id=>wwv_flow_api.id(63438834690285019319)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438835039772019319)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'managerdept'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492584678688383084)
,p_parameter_id=>wwv_flow_api.id(63438835039772019319)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498724161240680805)
,p_parameter_id=>wwv_flow_api.id(63438835039772019319)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438845264847019319)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492585088944383084)
,p_parameter_id=>wwv_flow_api.id(63438845264847019319)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498724626931680805)
,p_parameter_id=>wwv_flow_api.id(63438845264847019319)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438845583211019320)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492585505655383085)
,p_parameter_id=>wwv_flow_api.id(63438845583211019320)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498725023864680805)
,p_parameter_id=>wwv_flow_api.id(63438845583211019320)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438845902421019320)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492585898506383085)
,p_parameter_id=>wwv_flow_api.id(63438845902421019320)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498725437440680806)
,p_parameter_id=>wwv_flow_api.id(63438845902421019320)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438846177885019320)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492586268120383087)
,p_parameter_id=>wwv_flow_api.id(63438846177885019320)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498725802618680806)
,p_parameter_id=>wwv_flow_api.id(63438846177885019320)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438846544667019320)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492586681696383087)
,p_parameter_id=>wwv_flow_api.id(63438846544667019320)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498726160653680807)
,p_parameter_id=>wwv_flow_api.id(63438846544667019320)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438846832608019321)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492587085768383087)
,p_parameter_id=>wwv_flow_api.id(63438846832608019321)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498726564235680807)
,p_parameter_id=>wwv_flow_api.id(63438846832608019321)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438847150730019323)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492587525035383087)
,p_parameter_id=>wwv_flow_api.id(63438847150730019323)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498727023993680808)
,p_parameter_id=>wwv_flow_api.id(63438847150730019323)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438847371774019323)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492587901084383088)
,p_parameter_id=>wwv_flow_api.id(63438847371774019323)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498727433841680808)
,p_parameter_id=>wwv_flow_api.id(63438847371774019323)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438847702237019324)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492588302108383088)
,p_parameter_id=>wwv_flow_api.id(63438847702237019324)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498727802200680809)
,p_parameter_id=>wwv_flow_api.id(63438847702237019324)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438848006522019325)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492588664814383088)
,p_parameter_id=>wwv_flow_api.id(63438848006522019325)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498728191013680809)
,p_parameter_id=>wwv_flow_api.id(63438848006522019325)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438848304171019325)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492589124889383089)
,p_parameter_id=>wwv_flow_api.id(63438848304171019325)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498728634714680809)
,p_parameter_id=>wwv_flow_api.id(63438848304171019325)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438848565840019325)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492589532134383089)
,p_parameter_id=>wwv_flow_api.id(63438848565840019325)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498729037182680809)
,p_parameter_id=>wwv_flow_api.id(63438848565840019325)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438848929659019326)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492589924049383089)
,p_parameter_id=>wwv_flow_api.id(63438848929659019326)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498729399548680810)
,p_parameter_id=>wwv_flow_api.id(63438848929659019326)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438849236906019326)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'employeemanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492590308277383089)
,p_parameter_id=>wwv_flow_api.id(63438849236906019326)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498729794924680810)
,p_parameter_id=>wwv_flow_api.id(63438849236906019326)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438849526794019326)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'currentprojects'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492590706585383090)
,p_parameter_id=>wwv_flow_api.id(63438849526794019326)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498730161209680811)
,p_parameter_id=>wwv_flow_api.id(63438849526794019326)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438849805849019326)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492591088095383090)
,p_parameter_id=>wwv_flow_api.id(63438849805849019326)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498730610992680811)
,p_parameter_id=>wwv_flow_api.id(63438849805849019326)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63438850087240019327)
,p_ws_opers_id=>wwv_flow_api.id(63309533513064163824)
,p_name=>'employeesmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492591476106383090)
,p_parameter_id=>wwv_flow_api.id(63438850087240019327)
,p_process_id=>wwv_flow_api.id(63492581223127383079)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63498730971259680812)
,p_parameter_id=>wwv_flow_api.id(63438850087240019327)
,p_process_id=>wwv_flow_api.id(63498720702778680799)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_president_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309570180695800079)
,p_name=>'S16_President_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309570396299800080)
,p_ws_id=>wwv_flow_api.id(63309570180695800079)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309570722970800081)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492446161882371808)
,p_parameter_id=>wwv_flow_api.id(63309570722970800081)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497742623382951327)
,p_parameter_id=>wwv_flow_api.id(63309570722970800081)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309571015012800081)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492446577030371809)
,p_parameter_id=>wwv_flow_api.id(63309571015012800081)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497742991580951328)
,p_parameter_id=>wwv_flow_api.id(63309571015012800081)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309571336356800082)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492447050030371810)
,p_parameter_id=>wwv_flow_api.id(63309571336356800082)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497743366645951328)
,p_parameter_id=>wwv_flow_api.id(63309571336356800082)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309571580623800083)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492447390081371810)
,p_parameter_id=>wwv_flow_api.id(63309571580623800083)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497743835831951328)
,p_parameter_id=>wwv_flow_api.id(63309571580623800083)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309571935466800083)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492447765313371810)
,p_parameter_id=>wwv_flow_api.id(63309571935466800083)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497744224232951329)
,p_parameter_id=>wwv_flow_api.id(63309571935466800083)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309572202773800083)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492448163847371810)
,p_parameter_id=>wwv_flow_api.id(63309572202773800083)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497744560381951329)
,p_parameter_id=>wwv_flow_api.id(63309572202773800083)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309572473089800083)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492448616930371811)
,p_parameter_id=>wwv_flow_api.id(63309572473089800083)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497745030934951329)
,p_parameter_id=>wwv_flow_api.id(63309572473089800083)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309572857571800084)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492466228107371821)
,p_parameter_id=>wwv_flow_api.id(63309572857571800084)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_PRESIDENT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497762649673951336)
,p_parameter_id=>wwv_flow_api.id(63309572857571800084)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_PRESIDENT'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309573073634800084)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439038322509038753)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'projectsmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492448990037371811)
,p_parameter_id=>wwv_flow_api.id(63439038322509038753)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PROJECTSMANAGING'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497755407865951330)
,p_parameter_id=>wwv_flow_api.id(63439038322509038753)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439038648508038754)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'managerdept'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492449409135371811)
,p_parameter_id=>wwv_flow_api.id(63439038648508038754)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MANAGERDEPT'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497755804230951330)
,p_parameter_id=>wwv_flow_api.id(63439038648508038754)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439038956287038754)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492449835543371813)
,p_parameter_id=>wwv_flow_api.id(63439038956287038754)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PERSONID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497756178872951330)
,p_parameter_id=>wwv_flow_api.id(63439038956287038754)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439039220498038754)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492450247279371813)
,p_parameter_id=>wwv_flow_api.id(63439039220498038754)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_FIRSTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497756568116951330)
,p_parameter_id=>wwv_flow_api.id(63439039220498038754)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439039481464038754)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492450582862371814)
,p_parameter_id=>wwv_flow_api.id(63439039481464038754)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_LASTNAME'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497757022408951331)
,p_parameter_id=>wwv_flow_api.id(63439039481464038754)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439039826152038755)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492451031051371814)
,p_parameter_id=>wwv_flow_api.id(63439039826152038755)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEADDRESS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497757396437951331)
,p_parameter_id=>wwv_flow_api.id(63439039826152038755)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439040133192038755)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492451404692371816)
,p_parameter_id=>wwv_flow_api.id(63439040133192038755)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_ZIPCODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497757768454951331)
,p_parameter_id=>wwv_flow_api.id(63439040133192038755)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439040402373038755)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492451829415371816)
,p_parameter_id=>wwv_flow_api.id(63439040402373038755)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_HOMEPHONE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497758158127951332)
,p_parameter_id=>wwv_flow_api.id(63439040402373038755)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439040724455038756)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492452216285371817)
,p_parameter_id=>wwv_flow_api.id(63439040724455038756)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USCITIZEN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497758598401951332)
,p_parameter_id=>wwv_flow_api.id(63439040724455038756)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439040972298038756)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492452608613371817)
,p_parameter_id=>wwv_flow_api.id(63439040972298038756)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_SPOUSE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497758981929951333)
,p_parameter_id=>wwv_flow_api.id(63439040972298038756)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439041340267038756)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492452966449371817)
,p_parameter_id=>wwv_flow_api.id(63439041340267038756)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_CHILDREN'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497759445453951333)
,p_parameter_id=>wwv_flow_api.id(63439041340267038756)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439041608963038757)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492453405582371817)
,p_parameter_id=>wwv_flow_api.id(63439041608963038757)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PARENTS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497759775625951333)
,p_parameter_id=>wwv_flow_api.id(63439041608963038757)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439041946556038757)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'employeeid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492453789789371818)
,p_parameter_id=>wwv_flow_api.id(63439041946556038757)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_EMPLOYEEID'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497760174329951334)
,p_parameter_id=>wwv_flow_api.id(63439041946556038757)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_EMPLOYEEID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439042231788038757)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492454175896371818)
,p_parameter_id=>wwv_flow_api.id(63439042231788038757)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_SALARY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497760649519951334)
,p_parameter_id=>wwv_flow_api.id(63439042231788038757)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439042469389038757)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'salaryexception'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492454559144371819)
,p_parameter_id=>wwv_flow_api.id(63439042469389038757)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497761005008951334)
,p_parameter_id=>wwv_flow_api.id(63439042469389038757)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARYEXCEPTION'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439042811470038757)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'employeemanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492454967130371819)
,p_parameter_id=>wwv_flow_api.id(63439042811470038757)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_EMPLOYEEMANAGER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497761427306951335)
,p_parameter_id=>wwv_flow_api.id(63439042811470038757)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439043074829038758)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'bonus'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492465430505371819)
,p_parameter_id=>wwv_flow_api.id(63439043074829038758)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_BONUS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497761813450951335)
,p_parameter_id=>wwv_flow_api.id(63439043074829038758)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_BONUS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63439043380442038758)
,p_ws_opers_id=>wwv_flow_api.id(63309570396299800080)
,p_name=>'employeesmanaging'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63492465814349371820)
,p_parameter_id=>wwv_flow_api.id(63439043380442038758)
,p_process_id=>wwv_flow_api.id(63492445901549371806)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_EMPLOYEESMANAGING'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63497762251059951335)
,p_parameter_id=>wwv_flow_api.id(63439043380442038758)
,p_process_id=>wwv_flow_api.id(63497742325612951324)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_previousemployee_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309681469950189290)
,p_name=>'S16_PreviousEmployee_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309681731152189290)
,p_ws_id=>wwv_flow_api.id(63309681469950189290)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309681967237189291)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493028736248424568)
,p_parameter_id=>wwv_flow_api.id(63309681967237189291)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499281982864123984)
,p_parameter_id=>wwv_flow_api.id(63309681967237189291)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309682352845189291)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493029100625424568)
,p_parameter_id=>wwv_flow_api.id(63309682352845189291)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499282367417123986)
,p_parameter_id=>wwv_flow_api.id(63309682352845189291)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309682593383189291)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493029469769424569)
,p_parameter_id=>wwv_flow_api.id(63309682593383189291)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499282825631123986)
,p_parameter_id=>wwv_flow_api.id(63309682593383189291)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309682870916189292)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493029955359424569)
,p_parameter_id=>wwv_flow_api.id(63309682870916189292)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499283186683123986)
,p_parameter_id=>wwv_flow_api.id(63309682870916189292)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309683221512189292)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493030330683424570)
,p_parameter_id=>wwv_flow_api.id(63309683221512189292)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499283627413123987)
,p_parameter_id=>wwv_flow_api.id(63309683221512189292)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309683466665189292)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493030752250424572)
,p_parameter_id=>wwv_flow_api.id(63309683466665189292)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499283968536123987)
,p_parameter_id=>wwv_flow_api.id(63309683466665189292)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnDimensions'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309683768467189292)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493031099602424572)
,p_parameter_id=>wwv_flow_api.id(63309683768467189292)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499284375867123988)
,p_parameter_id=>wwv_flow_api.id(63309683768467189292)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_returnFor'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309684104477189292)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'isfired'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493031552002424572)
,p_parameter_id=>wwv_flow_api.id(63309684104477189292)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499284763735123988)
,p_parameter_id=>wwv_flow_api.id(63309684104477189292)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_isfired'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309684455781189293)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'salary'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493031945950424572)
,p_parameter_id=>wwv_flow_api.id(63309684455781189293)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499285230213123988)
,p_parameter_id=>wwv_flow_api.id(63309684455781189293)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_SALARY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309684673190189293)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493036321302424578)
,p_parameter_id=>wwv_flow_api.id(63309684673190189293)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY_PREVIOUSEMPLOYEE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499289632479123992)
,p_parameter_id=>wwv_flow_api.id(63309684673190189293)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_QUERY_PREVIOUSEMPLOYEE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309685006412189293)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417743663927619310)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'personid'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493032351793424574)
,p_parameter_id=>wwv_flow_api.id(63417743663927619310)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499285578446123989)
,p_parameter_id=>wwv_flow_api.id(63417743663927619310)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_PERSONID'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417744047244619311)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'firstname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493032664995424575)
,p_parameter_id=>wwv_flow_api.id(63417744047244619311)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499286052774123989)
,p_parameter_id=>wwv_flow_api.id(63417744047244619311)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_FIRSTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417744340889619311)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'lastname'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493033096767424575)
,p_parameter_id=>wwv_flow_api.id(63417744340889619311)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499286401894123989)
,p_parameter_id=>wwv_flow_api.id(63417744340889619311)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_LASTNAME'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417744592726619311)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'homeaddress'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493033507659424575)
,p_parameter_id=>wwv_flow_api.id(63417744592726619311)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499286835508123990)
,p_parameter_id=>wwv_flow_api.id(63417744592726619311)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEADDRESS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417744860174619311)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'zipcode'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493033939276424576)
,p_parameter_id=>wwv_flow_api.id(63417744860174619311)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499287180417123990)
,p_parameter_id=>wwv_flow_api.id(63417744860174619311)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_ZIPCODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417755198688619312)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'homephone'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493034312811424576)
,p_parameter_id=>wwv_flow_api.id(63417755198688619312)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499287587041123990)
,p_parameter_id=>wwv_flow_api.id(63417755198688619312)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_HOMEPHONE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417755552468619312)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'uscitizen'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493034659186424576)
,p_parameter_id=>wwv_flow_api.id(63417755552468619312)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499287989605123991)
,p_parameter_id=>wwv_flow_api.id(63417755552468619312)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
,p_parm_value=>'P9_USCITIZEN'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417755788537619312)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'spouse'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493035128970424577)
,p_parameter_id=>wwv_flow_api.id(63417755788537619312)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499288382560123991)
,p_parameter_id=>wwv_flow_api.id(63417755788537619312)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417756091756619313)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'children'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493035552731424577)
,p_parameter_id=>wwv_flow_api.id(63417756091756619313)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499288842836123991)
,p_parameter_id=>wwv_flow_api.id(63417756091756619313)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63417756390390619313)
,p_ws_opers_id=>wwv_flow_api.id(63309681731152189290)
,p_name=>'parents'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63493035953703424577)
,p_parameter_id=>wwv_flow_api.id(63417756390390619313)
,p_process_id=>wwv_flow_api.id(63493028374139424566)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63499289238637123991)
,p_parameter_id=>wwv_flow_api.id(63417756390390619313)
,p_process_id=>wwv_flow_api.id(63499281662186123982)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_project_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309808109601228446)
,p_name=>'S16_Project_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309808296499228446)
,p_ws_id=>wwv_flow_api.id(63309808109601228446)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309808632780228447)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480857825465768340)
,p_parameter_id=>wwv_flow_api.id(63309808632780228447)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309808919935228447)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480858624760768341)
,p_parameter_id=>wwv_flow_api.id(63309808919935228447)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309809206810228447)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480859368572768342)
,p_parameter_id=>wwv_flow_api.id(63309809206810228447)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309809541715228448)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480860243116768345)
,p_parameter_id=>wwv_flow_api.id(63309809541715228448)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309809774666228448)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480860994859768345)
,p_parameter_id=>wwv_flow_api.id(63309809774666228448)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309810149825228448)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480861775046768346)
,p_parameter_id=>wwv_flow_api.id(63309810149825228448)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309810419616228448)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480862606669768347)
,p_parameter_id=>wwv_flow_api.id(63309810419616228448)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309810734526228448)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480863446663768348)
,p_parameter_id=>wwv_flow_api.id(63309810734526228448)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309810977673228450)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480864181017768349)
,p_parameter_id=>wwv_flow_api.id(63309810977673228450)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309811306151228451)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'projectmanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480864972991768349)
,p_parameter_id=>wwv_flow_api.id(63309811306151228451)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTMANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309811602815228451)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'deptassigned'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480865857765768350)
,p_parameter_id=>wwv_flow_api.id(63309811602815228451)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DEPTASSIGNED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309811924406228451)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'subprojects'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480866583140768351)
,p_parameter_id=>wwv_flow_api.id(63309811924406228451)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_SUBPROJECTS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309812232603228451)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'subprojectof'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480867419894768351)
,p_parameter_id=>wwv_flow_api.id(63309812232603228451)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_SUBPROJECTOF'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309812503380228451)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63480868202580768352)
,p_parameter_id=>wwv_flow_api.id(63309812503380228451)
,p_process_id=>wwv_flow_api.id(63480857053173768338)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309812842350228452)
,p_ws_opers_id=>wwv_flow_api.id(63309808296499228446)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_currentproject_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309909234959240374)
,p_name=>'S16_CurrentProject_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309909418539240374)
,p_ws_id=>wwv_flow_api.id(63309909234959240374)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309909703213240375)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468669158241350916)
,p_parameter_id=>wwv_flow_api.id(63309909703213240375)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481536151832885859)
,p_parameter_id=>wwv_flow_api.id(63309909703213240375)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309909974518240375)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468669581722350917)
,p_parameter_id=>wwv_flow_api.id(63309909974518240375)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481536489433885859)
,p_parameter_id=>wwv_flow_api.id(63309909974518240375)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309910273481240375)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468669995493350917)
,p_parameter_id=>wwv_flow_api.id(63309910273481240375)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481536919589885860)
,p_parameter_id=>wwv_flow_api.id(63309910273481240375)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309910598751240375)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468670398613350917)
,p_parameter_id=>wwv_flow_api.id(63309910598751240375)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481537282539885860)
,p_parameter_id=>wwv_flow_api.id(63309910598751240375)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309910942214240375)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468670848517350918)
,p_parameter_id=>wwv_flow_api.id(63309910942214240375)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481537719046885860)
,p_parameter_id=>wwv_flow_api.id(63309910942214240375)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309911173226240376)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468671183743350918)
,p_parameter_id=>wwv_flow_api.id(63309911173226240376)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481538121390885860)
,p_parameter_id=>wwv_flow_api.id(63309911173226240376)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309911460994240378)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468671618750350919)
,p_parameter_id=>wwv_flow_api.id(63309911460994240378)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481538534641885861)
,p_parameter_id=>wwv_flow_api.id(63309911460994240378)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309911787943240378)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'projectactive'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468671981476350919)
,p_parameter_id=>wwv_flow_api.id(63309911787943240378)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481538927417885862)
,p_parameter_id=>wwv_flow_api.id(63309911787943240378)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTACTIVE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309912089810240378)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'projectmembers'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468672375819350921)
,p_parameter_id=>wwv_flow_api.id(63309912089810240378)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481539285156885862)
,p_parameter_id=>wwv_flow_api.id(63309912089810240378)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309912416880240378)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468685251963350924)
,p_parameter_id=>wwv_flow_api.id(63309912416880240378)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_QUERY2'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481542061488885864)
,p_parameter_id=>wwv_flow_api.id(63309912416880240378)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309912685663240379)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418019780203628407)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468672849253350922)
,p_parameter_id=>wwv_flow_api.id(63418019780203628407)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481539665455885862)
,p_parameter_id=>wwv_flow_api.id(63418019780203628407)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418020068142628407)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468673250141350922)
,p_parameter_id=>wwv_flow_api.id(63418020068142628407)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481540127744885863)
,p_parameter_id=>wwv_flow_api.id(63418020068142628407)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418020409802628408)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'projectmanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468673566947350922)
,p_parameter_id=>wwv_flow_api.id(63418020409802628408)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481540520289885863)
,p_parameter_id=>wwv_flow_api.id(63418020409802628408)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418020671141628408)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'deptassigned'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468673959871350923)
,p_parameter_id=>wwv_flow_api.id(63418020671141628408)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481540871786885864)
,p_parameter_id=>wwv_flow_api.id(63418020671141628408)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418021034185628408)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'subprojects'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468674369396350923)
,p_parameter_id=>wwv_flow_api.id(63418021034185628408)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481541266571885864)
,p_parameter_id=>wwv_flow_api.id(63418021034185628408)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418021294622628408)
,p_ws_opers_id=>wwv_flow_api.id(63309909418539240374)
,p_name=>'subprojectof'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63468674834568350923)
,p_parameter_id=>wwv_flow_api.id(63418021294622628408)
,p_process_id=>wwv_flow_api.id(63468668896439350913)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63481541733178885864)
,p_parameter_id=>wwv_flow_api.id(63418021294622628408)
,p_process_id=>wwv_flow_api.id(63481535842669885857)
,p_map_type=>'ITEM'
);
end;
/
prompt --application/shared_components/logic/webservices/s16_previousproject_reference
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(63309964206611878043)
,p_name=>'S16_PreviousProject_Reference'
,p_url=>'aevum.cs.utexas.edu:8020/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(63309964399419878044)
,p_ws_id=>wwv_flow_api.id(63309964206611878043)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309964697868878045)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470901877910465113)
,p_parameter_id=>wwv_flow_api.id(63309964697868878045)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482191374745304773)
,p_parameter_id=>wwv_flow_api.id(63309964697868878045)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63309965027056878045)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470902272668465114)
,p_parameter_id=>wwv_flow_api.id(63309965027056878045)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482191788276304774)
,p_parameter_id=>wwv_flow_api.id(63309965027056878045)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310005318537878045)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470902683683465114)
,p_parameter_id=>wwv_flow_api.id(63310005318537878045)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482192253559304774)
,p_parameter_id=>wwv_flow_api.id(63310005318537878045)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310005558056878045)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470903152737465114)
,p_parameter_id=>wwv_flow_api.id(63310005558056878045)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482192613671304774)
,p_parameter_id=>wwv_flow_api.id(63310005558056878045)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310005877934878046)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470903477305465115)
,p_parameter_id=>wwv_flow_api.id(63310005877934878046)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482193057616304775)
,p_parameter_id=>wwv_flow_api.id(63310005877934878046)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310006187818878046)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470903913517465116)
,p_parameter_id=>wwv_flow_api.id(63310006187818878046)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_returnDimensions'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482193437055304775)
,p_parameter_id=>wwv_flow_api.id(63310006187818878046)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310006478249878046)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470904294166465116)
,p_parameter_id=>wwv_flow_api.id(63310006478249878046)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_returnFor'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482193771296304775)
,p_parameter_id=>wwv_flow_api.id(63310006478249878046)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_RETURNFOR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310006835555878046)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'enddatemonth'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470904682143465116)
,p_parameter_id=>wwv_flow_api.id(63310006835555878046)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482194220378304776)
,p_parameter_id=>wwv_flow_api.id(63310006835555878046)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ENDDATEMONTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310007083762878047)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'enddateday'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470925110042465116)
,p_parameter_id=>wwv_flow_api.id(63310007083762878047)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482194616446304776)
,p_parameter_id=>wwv_flow_api.id(63310007083762878047)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ENDDATEDAY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310007382068878047)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'enddateyear'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470925554065465117)
,p_parameter_id=>wwv_flow_api.id(63310007382068878047)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482194988741304776)
,p_parameter_id=>wwv_flow_api.id(63310007382068878047)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ENDDATEYEAR'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310007682168878048)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'estpersonhours'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470925887483465117)
,p_parameter_id=>wwv_flow_api.id(63310007682168878048)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482195362653304777)
,p_parameter_id=>wwv_flow_api.id(63310007682168878048)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_ESTPERSONHOURS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310008044749878048)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470928706388465120)
,p_parameter_id=>wwv_flow_api.id(63310008044749878048)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482198230432304779)
,p_parameter_id=>wwv_flow_api.id(63310008044749878048)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_QUERY2'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63310008268099878049)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418056682928637293)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'projectno'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470926310436465118)
,p_parameter_id=>wwv_flow_api.id(63418056682928637293)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482195853519304777)
,p_parameter_id=>wwv_flow_api.id(63418056682928637293)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTNO'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418057000640637294)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'projecttitle'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470926709192465119)
,p_parameter_id=>wwv_flow_api.id(63418057000640637294)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482196221480304777)
,p_parameter_id=>wwv_flow_api.id(63418057000640637294)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTTITLE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418057318099637294)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'projectmanager'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470927140058465119)
,p_parameter_id=>wwv_flow_api.id(63418057318099637294)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482196589947304778)
,p_parameter_id=>wwv_flow_api.id(63418057318099637294)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_PROJECTMANAGER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418057590712637295)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'deptassigned'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470927494567465119)
,p_parameter_id=>wwv_flow_api.id(63418057590712637295)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482196975181304778)
,p_parameter_id=>wwv_flow_api.id(63418057590712637295)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_DEPTASSIGNED'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418057914386637295)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'subprojects'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470927953120465120)
,p_parameter_id=>wwv_flow_api.id(63418057914386637295)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482197422591304778)
,p_parameter_id=>wwv_flow_api.id(63418057914386637295)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(63418058211952637296)
,p_ws_opers_id=>wwv_flow_api.id(63309964399419878044)
,p_name=>'subprojectof'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63470928318910465120)
,p_parameter_id=>wwv_flow_api.id(63418058211952637296)
,p_process_id=>wwv_flow_api.id(63470901647444465111)
,p_map_type=>'ITEM'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(63482197826876304779)
,p_parameter_id=>wwv_flow_api.id(63418058211952637296)
,p_process_id=>wwv_flow_api.id(63482191101589304770)
,p_map_type=>'ITEM'
,p_parm_value=>'P8_SUBPROJECTOF'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
