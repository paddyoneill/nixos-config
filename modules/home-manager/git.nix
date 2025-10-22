_:

{
  programs.git = {
    enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
    userName = "Paddy O'Neill";
    userEmail = "paddy.oneill93@gmail.com";
  };
}
