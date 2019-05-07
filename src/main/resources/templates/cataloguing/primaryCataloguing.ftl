<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <#include "pageHeader.ftl">
    <script src="../js/cataloguing/primaryCataloguing.js"></script>
    <script src="../js/util.js"></script>

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
                        <div class="row">
                            <div class="col-xs-3">
                                    <label for="materialTypeSelect">
                                        Material type

                                        <select class="form-control input-medium" id="materialTypeSelect">
                                            <option>Option 1</option>
                                            <option>Option 2</option>
                                            <option>Option 3</option>
                                            <option>Option 4</option>
                                            <option>Option 5</option>
                                        </select>
                                    </label>

                            </div>
                            <div class="col-xs-3">
                                    <label>Bibliographic level</label>
                                    <select class="form-control input-medium" id="bibliographicLevelSelect">
                                        <option>Option 1</option>
                                        <option>Option 2</option>
                                        <option>Option 3</option>
                                        <option>Option 4</option>
                                        <option>Option 5</option>
                                    </select>
                            </div>
                            <div class="col-xs-3">
                                    <label>Template</label>
                                    <select class="form-control input-medium" id="templateSelect">
                                        <option>Option 1</option>
                                        <option>Option 2</option>
                                        <option>Option 3</option>
                                        <option>Option 4</option>
                                        <option>Option 5</option>
                                    </select>
                            </div>
                        </div>
                        <hr/>
                        <div class="row">
                            <div class="col-12 col-md-8">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Catalogue Info</h3>
                                    </div>
                                    <div class="panel-body">

                                    </div>
                                </div>
                            </div>
                            <div class="col-6 col-md-4">
                                <div class="btn-group-vertical btn-group-solid">
                                    <div class="btn-group">
                                        <button id="btnGroupVerticalDrop5" type="button" class="btn green dropdown-toggle" data-toggle="dropdown"> Field
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop5">
                                            <li>
                                                <a href="javascript:;" data-toggle="modal" data-target="#exampleModal"> Add </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Delete </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Repeat </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <button id="btnGroupVerticalDrop6" type="button" class="btn blue dropdown-toggle" data-toggle="dropdown"> Sub Field
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="btnGroupVerticalDrop5">
                                            <li>
                                                <a href="javascript:;"> Add </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Delete </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;"> Repeat </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
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
        <!--<script src="../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
        <link href="../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" />-->
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="../assets/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.full.js"></script>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search/Select Tag</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="selectTag">Select or Search for a Tag</label>
                            <select id="selectTag" name="tags[]" style="width: 100%">
                            </select>
                        </div>
                        <div class="container-fluid">
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Tag information</div>
                                    <div class="panel-body" id="tagInformation">
                                        <span class="font-purple-seance" id="tagInformationtag"></span><br>
                                        <span class="font-blue-chambray font-lg" id="tagInformationdefinition"></span><br>
                                        <span class="font-blue-steel bold" id="tagInformationdescription"></span><br>
                                        <span class="font-green-seagreen" id="tagInformationrepeat"></span><br>
                                        <span class="font-dark" id="tagInformationexample"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Indicator 1</div>
                                    <div class="panel-body">
                                        <span class="font-blue-chambray font-lg" id="i1GeneralInformationdefinition"></span><br>
                                        <span class="font-blue-steel bold" id="i1GeneralInformationdescription"></span><br>
                                        <select class="selectpicker" data-width="fit" id="indicator1Selection" hidden>
                                        </select>
                                        <input type="text" size="1"  id="indicator1Input" hidden>
                                        <span class="font-blue-chambray font-lg" id="i1Informationdefinition"></span><br>
                                        <span class="font-blue-steel bold" id="i1Informationdescription"></span><br>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">Indicator 2</div>
                                    <div class="panel-body">
                                        <span class="font-blue-chambray font-lg" id="i2GeneralInformationdefinition"></span><br>
                                        <span class="font-blue-steel bold" id="i2GeneralInformationdescription"></span><br>
                                        <select class="selectpicker" data-width="fit" id="indicator2Selection" hidden>
                                        </select>
                                        <input type="text" size="1"  id="indicator2Input" hidden>
                                        <span class="font-blue-chambray font-lg" id="i2Informationdefinition"></span><br>
                                        <span class="font-blue-steel bold" id="i2Informationdescription"></span><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div  class="container-fluid">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Identifier</th>
                                    <th scope="col">Description</th>
                                </tr>
                                </thead>
                                <tbody id="subFieldData">

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
