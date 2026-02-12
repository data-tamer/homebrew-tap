class Agentdev < Formula
  desc "AgentDev distributed agent client"
  homepage "https://github.com/data-tamer/agentdev"
  url "https://registry.npmjs.org/@datatamer.ai/agentdev/-/agentdev-1.0.6.tgz"
  sha256 "ffc40a4a6a5b5b4b68ddd401a2f3aa07a3ca8b84ae470d65047840c844c380b2"
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
