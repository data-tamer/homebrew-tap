class Agentdev < Formula
  desc "AgentDev distributed agent client"
  homepage "https://github.com/data-tamer/agentdev"
  url "https://registry.npmjs.org/@datatamer.ai/agentdev/-/agentdev-1.0.5.tgz"
  sha256 "5294b24bc1d215e7f506cab6c4f8b9e09acb16cc6b3e92a142afbeb2534c6b34"
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
