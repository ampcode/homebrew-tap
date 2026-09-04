class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788494452-g6dc077"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788494452-g6dc077/amp-darwin-arm64"
      sha256 "c58dc262ffe421d93097019860a5009b3abb452ef92ea43631ee34752eff3c40"
    else
      url "https://static.ampcode.com/cli/0.0.1788494452-g6dc077/amp-darwin-x64"
      sha256 "ad8eb5a6d8d34945e7449e8d515de34293cf9088aed51849bafa69224626c58b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788494452-g6dc077/amp-linux-arm64"
      sha256 "722cf5a8abcdf4167e0dcbdf7a9f4af692b36a2dec69ad5ac0bd9a58d04a80a1"
    else
      url "https://static.ampcode.com/cli/0.0.1788494452-g6dc077/amp-linux-x64"
      sha256 "328efe13828e4cf6f103a8d60b9a3e812450c517bc9c39cde4edb07613795ee9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
