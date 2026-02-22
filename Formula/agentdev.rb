class Agentdev < Formula
  desc "AgentDev distributed agent client"
  homepage "https://github.com/data-tamer/agentdev"
  url "https://registry.npmjs.org/@datatamer.ai/agentdev/-/agentdev-1.0.18.tgz"
  sha256 "08416d9adb3d1b4b719bdd3e636cfe77e27b0db47d6bea2f9978e743e1447ecd"
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
