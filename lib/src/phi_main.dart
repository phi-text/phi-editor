part of phi_editor;

ArgParser phiArguments = new ArgParser();

void main(ArgResults args) {
  editor.init(args.rest.join(' '));
}