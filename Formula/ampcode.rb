class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795708844-gca33db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795708844-gca33db/amp-darwin-arm64"
      sha256 "1c7c2da747f590a516be3aadcf81a6c2d823904c05e0b78a777cdc149cae80e2"
    else
      url "https://static.ampcode.com/cli/0.0.1795708844-gca33db/amp-darwin-x64"
      sha256 "52b5db1f3b24991517748ad3e3eb21608b8bfc806a55a2838379a083601bd7c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795708844-gca33db/amp-linux-arm64"
      sha256 "ef13199e90d24aa45252f4af6645d05abd56998d1290f3587723e4dc3b86a7b8"
    else
      url "https://static.ampcode.com/cli/0.0.1795708844-gca33db/amp-linux-x64"
      sha256 "ce1c3209a7a966c366649d5425e8e29f53b348a435cc6458a3891bab132cc76f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
