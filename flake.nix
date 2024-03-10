{
  description = "index for nix flake templates";


  outputs = { self }:
    {

      templates = {
        default = {
          path = ./templates/default;
          description = "default empty templates --no pins";
        };

        NodeJS-default = {
          path = ./templates/nodeJS;
          description = "node dev enveiroment MISSING CONTENT";
        };
      };
      
      defaultTemplate = self.templates.default;

    };
}

