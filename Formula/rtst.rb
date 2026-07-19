class Rtst < Formula
  desc "Command-line client for the rtst AI image and video generation API"
  homepage "https://github.com/rtst-ai/cli"
  url "https://registry.npmjs.org/@rtst-ai/cli/-/cli-0.1.1.tgz"
  sha256 "c85657dbee1ad1c5bd58f50946f3faea4be9444125d83ed64d099fad1c7e00b8"
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
