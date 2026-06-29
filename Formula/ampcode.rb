class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782721527-g443f16"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782721527-g443f16/amp-darwin-arm64"
      sha256 "50f8b20711917049a654e50994e2e28a73dc00db7a3fb33c44e50a640291d494"
    else
      url "https://static.ampcode.com/cli/0.0.1782721527-g443f16/amp-darwin-x64"
      sha256 "34af55f72f8a58967225677ed0a251eb98a75652a3d41e02a4091e9773531a8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782721527-g443f16/amp-linux-arm64"
      sha256 "0bcc8dc60a3a750e7bedb65bc64ddea469c07e141a359cac4be40d9fc7fed40e"
    else
      url "https://static.ampcode.com/cli/0.0.1782721527-g443f16/amp-linux-x64"
      sha256 "befeee64e5ef38bce653dfb05cd60ddc33c415f9bd137c90e59bf93136c5a344"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
