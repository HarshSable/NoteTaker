<nav class="navbar navbar-expand-lg navbar-dark  purple">
  
    <a class="navbar-brand" href="index.jsp">Note Taker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto">
        <li class="nav-item ">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add_notes.jsp">Add Note</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link " href = "all_notes.jsp">Show Notes</a>
        </li>
      </ul>
      
      <form class="form-inline my-2 my-lg-0" action ="SearchServlet" method="GET">
        <input class="form-control mr-sm-2" type="search" name = "query" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  
</nav> 