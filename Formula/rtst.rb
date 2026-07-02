class Rtst < Formula
  desc "Command-line client for the rtst AI image and video generation API"
  homepage "https://github.com/rtst-ai/cli"
  url "https://registry.npmjs.org/@rtst-ai/cli/-/cli-0.1.0.tgz"
  sha256 "1fef7832787e9a1f7df61fc2e13d45f0bf4161d0c375d60bf1f6bdc19db8b029"
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
