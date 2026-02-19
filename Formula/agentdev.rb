class Agentdev < Formula
  desc "AgentDev distributed agent client"
  homepage "https://github.com/data-tamer/agentdev"
  url "https://registry.npmjs.org/@datatamer.ai/agentdev/-/agentdev-1.0.14.tgz"
  sha256 "f4a8531d8af0fd0442c98aab3898292d91c5f3e39e9024dd0b2a0b0ee3316cab"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "agentdev", shell_output("#{bin}/agentdev --version")
  end
end
