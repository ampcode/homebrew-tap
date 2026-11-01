class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793534443-ga508b6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793534443-ga508b6/amp-darwin-arm64"
      sha256 "28b0ebedc2d9f4a7bf80adcefe2362a75ebb5ce9b70ce6225444c3f70a0efbbc"
    else
      url "https://static.ampcode.com/cli/0.0.1793534443-ga508b6/amp-darwin-x64"
      sha256 "f50cc580a0fb62570e5377dd6f4c39f0d651366b3f6ed8069bbc3fa43f75e833"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793534443-ga508b6/amp-linux-arm64"
      sha256 "4f94d451e96a8ef5235a822729506e3ae553a2fa44cf2d27ec8398bf233869bb"
    else
      url "https://static.ampcode.com/cli/0.0.1793534443-ga508b6/amp-linux-x64"
      sha256 "8ad62f173e918bc4d537dc76aeb3677fac7c8a529e3c85a0e9556c8339189fa3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
