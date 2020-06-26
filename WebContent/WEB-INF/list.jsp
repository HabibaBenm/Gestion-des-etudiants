<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="Dao.Etudiant"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
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
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
          <a class="sidebar-brand brand-logo" href="http://localhost:8080/GestionEtudiants/home.jsp"><img src="http://localhost:8080/GestionEtudiants/assets/images/new_logo copie.png" alt="logo" /></a>
          <a class="sidebar-brand brand-logo-mini" href="http://localhost:8080/GestionEtudiants/home.jsp"><img src="http://localhost:8080/GestionEtudiants/assets/images/icon.png" alt="logo" /></a>
        </div>
        <ul class="nav">
          <li class="nav-item profile">
            <div class="profile-desc">
              <div class="profile-pic">
                <div class="count-indicator">
                  <img class="img-xs rounded-circle " src="http://localhost:8080/GestionEtudiants/assets/images/faces-clipart⁩/pic-8.png" alt="">
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
                    <p class="preview-subject ellipsis mb-1 text-small">Paramètres du compte</p>
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
            <a class="nav-link" href="http://localhost:8080/GestionEtudiants/home.jsp">
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
              <span class="menu-title">Liste des etudiants</span>
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
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
          <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
            <a class="navbar-brand brand-logo-mini" href="http://localhost:8080/GestionEtudiants/home.jsp"><img src="http://localhost:8080/GestionEtudiants/assets/images/logo-mini.svg" alt="logo" /></a>
          </div>
          <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
            <ul class="navbar-nav w-100">
              <li class="nav-item w-100">
                <form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
                  <input type="text" class="form-control" placeholder="Search products">
                </form>
              </li>
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
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-format-line-spacing"></span>
            </button>
          </div>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"> Liste des etudiants </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Tables</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Liste des etudiants</li>
                </ol>
              </nav>
            </div>
            <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Liste des etudiants</h4>
                    </p>
                    <div class="table-responsive">
                      <table class="table table-striped table-hover">
                        <thead>
                          <tr>
                            <th> CNE </th>
                            <th> Nom </th>
                            <th> Prenom </th>
                            <th> Adresse Email </th>
                            <th> Date de Naissance </th>
                            <th> Region </th>
                            <th> Type de Baccalaureat </th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${etudiants}"  var="e">
                        
                          <tr>
                            <td>${e.CNE} </td>
                            <td>${e.nom} </td>
                            <td> ${e.prenom}  </td>
                            <td> ${e.email} </td>
                            <td> ${e.dateNaissance} </td>
                            <td> ${e.region}  </td>
                            <td> ${e.typeBac}  </td>
                            
                     
                          </tr>
                           </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2019 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>. All rights reserved.</span>
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
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="http://localhost:8080/GestionEtudiants/assets/js/off-canvas.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/hoverable-collapse.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/misc.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/settings.js"></script>
    <script src="http://localhost:8080/GestionEtudiants/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="http://localhost:8080/GestionEtudiants/assets/js/chart.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>