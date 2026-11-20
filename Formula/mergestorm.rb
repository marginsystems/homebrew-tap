class Mergestorm < Formula
  desc "CLI for Mergestorm: AI code review, auto-fixes and stacked PRs on GitHub"
  homepage "https://mergestorm.ai"
  url "https://registry.npmjs.org/mergestorm/-/mergestorm-0.3.70.tgz"
  sha256 "2df2c704cf175d698f1214710b64c3bd51fc4fc0b387c7b0054e3cb27f3b49e9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mergestorm --version")
  end
end
