class Rtst < Formula
  desc "Command-line client for the rtst AI image and video generation API"
  homepage "https://github.com/rtst-ai/cli"
  url "https://registry.npmjs.org/@rtst-ai/cli/-/cli-0.2.0.tgz"
  sha256 "75156d4532274397376cb0762d76a92877d35f171b7b102000cca2442a4a786f"
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
