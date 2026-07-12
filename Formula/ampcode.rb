class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783887245-ga0784f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783887245-ga0784f/amp-darwin-arm64"
      sha256 "5f9667f66f4b19bdfa1d12da41713eefeedb1ec2935e77dff6e3ba2fd445f467"
    else
      url "https://static.ampcode.com/cli/0.0.1783887245-ga0784f/amp-darwin-x64"
      sha256 "bcfa1e4e8cfa531b0273afe01133d237616dbce089a71aee1e995f19d1d51926"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783887245-ga0784f/amp-linux-arm64"
      sha256 "a0b222a4ebd0c7b0966b99567d6e976b28e7cbfe675150702487ed42cc5b2f12"
    else
      url "https://static.ampcode.com/cli/0.0.1783887245-ga0784f/amp-linux-x64"
      sha256 "36601e7d4e24a34b85dce083f5a859a7d08f1ef98ac353fc445e744932371b1e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
