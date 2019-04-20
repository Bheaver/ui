<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <#include "pageHeader.ftl">
    <script src="../js/cataloguing/importCatalogue.js"></script>
    <!-- END HEAD -->

    <body class="">
        <!-- BEGIN HEADER -->
        <#include "header.ftl">
        <!-- END HEADER -->

        <!-- BEGIN CONTAINER -->
        <div class="container-fluid">
            <div class="page-content page-content-popup">
                <div class="page-content-fixed-header">
                    <!-- BEGIN BREADCRUMBS -->
                    <#include "breadcrumbs.ftl">
                    <!-- END BREADCRUMBS -->

                </div>
                <div class="page-sidebar-wrapper">
                    <!-- BEGIN SIDEBAR -->
                    <#include "sidebar.ftl">
                    <!-- END SIDEBAR -->
                </div>
                <div class="page-fixed-main-content">
                    <!-- BEGIN PAGE BASE CONTENT -->
                    <div class="container-fluid">
                        <div class="form-body">
                            <div class="form-group">
                                <label>MARC Record</label>
                                <textarea class="form-control" rows="6" id="rawRecordTextArea"></textarea>
                            </div>
                            <button class="btn btn-circle btn-primary" id="importButton">Import</button>
                        </div>
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-comments"></i>Records</div>
                        </div>
                        <div class="portlet-body" style="display: block;">
                            <div class="table-scrollable">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th> # </th>
                                            <th> Records </th>
                                            <th> Actions </th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- END PAGE BASE CONTENT -->
                </div>
                <!-- BEGIN FOOTER -->
                <#include "footer.ftl">
                <!-- END FOOTER -->
            </div>
        </div>
        <!-- END CONTAINER -->


        <!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script>
<script src="../assets/global/plugins/ie8.fix.min.js"></script>
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="../assets/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>

</html>