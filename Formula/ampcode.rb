class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776241714-ga108e1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776241714-ga108e1/amp-darwin-arm64"
      sha256 "a88beab937cab4a6ef351a07609b174e442ef22c9aefa28d65315c653c153003"
    else
      url "https://static.ampcode.com/cli/0.0.1776241714-ga108e1/amp-darwin-x64"
      sha256 "5c76c4217069ec236ba13221da9c99063f27092c95a0d3f05c4f5fc2f2db3b69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776241714-ga108e1/amp-linux-arm64"
      sha256 "03d92cde6441600f707a4d4126c5ac379274384f7167f3f964fc57ed9cce9707"
    else
      url "https://static.ampcode.com/cli/0.0.1776241714-ga108e1/amp-linux-x64"
      sha256 "1c95cb96fd5107c2f1f6c2755b75918c5a5b1b41e820adf9d75dadfa43a3feb6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
