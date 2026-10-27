class Rtst < Formula
  desc "Command-line client for the rtst AI image and video generation API"
  homepage "https://github.com/rtst-ai/cli"
  url "https://registry.npmjs.org/@rtst-ai/cli/-/cli-0.3.1.tgz"
  sha256 "a9b5cb198e4e168cc5045e9af30b401447314c4d2c368dbb47231760c5ce62be"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rtst --version")
  end
end
