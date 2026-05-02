class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777732977-g401185"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777732977-g401185/amp-darwin-arm64"
      sha256 "f9afe5fcfc3fa7258821964ccc0125d48aed09be75459956fdfb69cef03f9d5e"
    else
      url "https://static.ampcode.com/cli/0.0.1777732977-g401185/amp-darwin-x64"
      sha256 "5456d5028fd3c77614177a70b806c37269bd9f73873d6851163b9b008c48ce91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777732977-g401185/amp-linux-arm64"
      sha256 "7b1894e555b88db80e532e06ffd6e69b15ca148037cdfcfe909ec3efaace73b5"
    else
      url "https://static.ampcode.com/cli/0.0.1777732977-g401185/amp-linux-x64"
      sha256 "353e0a74e8433e2efd86254db47008ed7c770e6466a322b52c7fb2b7f34f37e9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
