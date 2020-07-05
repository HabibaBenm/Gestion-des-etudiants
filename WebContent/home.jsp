<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="Dao.Etudiant"%>
<%@page import="java.util.Collection"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	    	    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	    
	  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MesEtudiants</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiantst/assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/vendors/owl-carousel-2/owl.theme.default.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="http://localhost:8080/GestionEtudiants/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="http://localhost:8080/GestionEtudiants/assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
          <a class="sidebar-brand brand-logo" href="http://localhost:8080/GestionEtudiants/home.jsp"><img src="http://localhost:8080/GestionEtudiants/assets/images/new_logo copie.png" alt="logo" /></a>
          <a class="sidebar-brand brand-logo-mini" href="http://localhost:8080/GestionEtudiants/home.jsp"><img src="http://localhost:8080/GestionEtudiants/assets/images/new_logo.png" alt="logo" /></a>
        </div>
        <ul class="nav">
          <li class="nav-item profile">
            <div class="profile-desc">
              <div class="profile-pic">
                <div class="count-indicator">
                  <img class="img-xs  " src="http://localhost:8080/GestionEtudiants/assets/images/icon.png" alt="">
                  <span class="count bg-success"></span>
                </div>
                <div class="profile-name">
                  <h5 class="mb-0 font-weight-normal">Professeur</h5>
                  <span>Admin</span>
                </div>
              </div>
              <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
              <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list" aria-labelledby="profile-dropdown">
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-settings text-primary"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Parametres du compte</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-onepassword  text-info"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Changer Mot de passe</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-calendar-today text-success"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">A faire liste</p>
                  </div>
                </a>
              </div>
            </div>
          </li>
          <li class="nav-item nav-category">
            <span class="nav-link">Menu</span>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="home.jsp">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">Acceuil</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <span class="menu-icon">
                <i class="mdi mdi-playlist-play"></i>
              </span>
              <span class="menu-title">Formulaires</span>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="<%=request.getContextPath()+"/Etudiant/ajout" %>"> Ajouter un etudiant </a></li>
                <li class="nav-item"> <a class="nav-link" href="<%=request.getContextPath()+"/Etudiant/update" %>"> Modifier un etudiant </a></li>
                <li class="nav-item"> <a class="nav-link" href="<%=request.getContextPath()+"/Etudiant/delete" %>"> Supprimer un etudiant </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="<%=request.getContextPath()+"/Etudiant/list" %>">
              <span class="menu-icon">
                <i class="mdi mdi-table-large"></i>
              </span>
              <span class="menu-title">Liste des Etudiants</span>
            </a>
          </li>
           <li class="nav-item menu-items">
            <a class="nav-link" href="<%=request.getContextPath()+"/Etudiant/recherche" %>">
              <span class="menu-icon">
                <i class="mdi mdi-table-large"></i>
              </span>
              <span class="menu-title">Chercher Etudiant</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="http://localhost:8080/GestionEtudiants/chartjs.jsp">
              <span class="menu-icon">
                <i class="mdi mdi-chart-bar"></i>
              </span>
              <span class="menu-title">Charts</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
          <div class="navbar-menu-wrapper flex-grow d-flex justify-content-right">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
             <ul class="navbar-nav w-100">
              <li class="nav-item w-100"></li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown">
                <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                  <div class="navbar-profile">
                    <img class="img-xs rounded-circle" src="http://localhost:8080/GestionEtudiants/assets/images/icon.png" alt="">
                    <p class="mb-0 d-none d-sm-block navbar-profile-name">Professeur</p>
                    <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
                  <h6 class="p-3 mb-0">Profile</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-settings text-success"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Settings</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-logout text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Log out</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">Advanced settings</p>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-format-line-spacing"></span>
            </button>
          </div>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-12 grid-margin stretch-card">
                <div class="card corona-gradient-card">
                  <div class="card-body py-0 px-0 px-sm-3">
                    <div class="row align-items-center">
                      <div class="col-4 col-sm-3 col-xl-2">
                        <img src="http://localhost:8080/GestionEtudiants/assets/images/dashboard/Group126@2x.png" class="gradient-corona-img img-fluid" alt="">
                      </div>
                      <div class="col-5 col-sm-7 col-xl-6 p-0">
                        <h4 class="mb-1 mb-sm-0">Bienvenue a votre plateforme MesEtudiants</h4>
                        <p class="mb-0 font-weight-normal d-none d-sm-block">Ici vous pouvez ajouter, modifer et supprimer vos etudiants</p>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-3 ">
                        <span>
                          <img src='http://localhost:8080/GestionEtudiants/assets/images/new_logo.png'/>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-4 grid-margin">
                <div class="card text-center text-xl-center">
                  <div class="card-body">
                    <a href="<%=request.getContextPath()+"/Etudiant/ajout" %>"><h5>Ajouter un etudiant</h5></a>
                      <div class="col-4 col-sm-12 col-xl-11">
                        <i class="icon-lg mdi mdi-codepen text-primary ml-auto"></i>
                      </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card text-center text-xl-center">
                  <div class="card-body">
                    <a href="<%=request.getContextPath()+"/Etudiant/update" %>"><h5>Modifier un etudiant</h5></a>
                    <div class="row">
                      <div class="col-4 col-sm-12 col-xl-11 ">
                        <i class="icon-lg mdi mdi-wallet-travel text-danger ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card text-center text-xl-center">
                  <div class="card-body">
                    <a href="<%=request.getContextPath()+"/Etudiant/delete" %>"><h5>Supprimer un etudiant</h5></a>
                    <div class="row">
                      <div class="col-4 col-sm-12 col-xl-11 ">
                        <i class="icon-lg mdi mdi-monitor text-success ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-xl-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <div class="item">
                        <img src="assets/images/new_logo.png" alt="">
                      </div>
                    <p class="text-muted"> </br> MesEtudiants est une simple application JEE qui permet des opérations avec la base de données MySQL.
                      Cette application permet d’ajouter un étudiant, lister les étudiants sauvegardés dans la base de données, modifier un étudiant, et supprimer un étudiant (CRUD operations).</br> </p>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-xl-6 grid-margin stretch-card">
                      <img src="assets/images/IMG_3164.jpg" alt="">
              </div>
             </div>
             <div class="row">
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">A faire liste</h4>
                    <div class="add-items d-flex">
                      <input type="text" class="form-control todo-list-input" placeholder="enter task..">
                      <button class="add btn btn-primary todo-list-add-btn">Ajouter</button>
                    </div>
                    <div class="list-wrapper">
                      <ul class="d-flex flex-column-reverse text-white todo-list todo-list-custom">
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> Modifier la région de Alami Ahmed </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                        <li class="completed">
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox" checked> Preparer la présentation </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> Plan weekend  </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">MesEtudiants par region</h4>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="table-responsive">
                          <table class="table">
                            <tbody>
                            <thead>
                             <tr>
                                 <th> Region </th>
                                 <th> Pourcentage </th>
                                 
                              </tr>
                             </thead>
                              <tbody>
                             <c:forEach items="${etudiantS}"  var="es">
	                          <tr>
	                            <td> ${es.region}  </td>
	                             <td> ${es.pourcentage}  </td>
	                          </tr>
	                           </c:forEach>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      <div class="col-md-7">
                        <div id="audience-map" class="vector-map"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright Â© 2019 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
              <span class="text-muted float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/chart.js/Chart.min.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="http://localhost:8080/GestionEtudiants/assets/js/off-canvas.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/hoverable-collapse.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/misc.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/settings.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="http://localhost:8080/GestionEtudiants/assets/js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>