class Agentdev < Formula
  desc "AgentDev distributed agent client"
  homepage "https://github.com/data-tamer/agentdev"
  url "https://registry.npmjs.org/@datatamer.ai/agentdev/-/agentdev-1.0.13.tgz"
  sha256 "cd2c69b71e81b1320fdb9cd4760ee587de43a1ffdc6c7cea2587af850b95f3e7"
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
