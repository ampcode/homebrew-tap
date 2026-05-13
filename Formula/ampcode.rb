class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778675695-g1ebb21"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778675695-g1ebb21/amp-darwin-arm64"
      sha256 "ced026ef11126188a5a46e0e4da4c4c9d216ce0265ee83937046359524b6eaea"
    else
      url "https://static.ampcode.com/cli/0.0.1778675695-g1ebb21/amp-darwin-x64"
      sha256 "2c7de7a4cba4769fd4897dfdc15ef00accffb494057e91e39ff6655b73c8ff9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778675695-g1ebb21/amp-linux-arm64"
      sha256 "1c8218202baa0aafb23876dfcd597ae1910ad509309a4047d7f67b411427142a"
    else
      url "https://static.ampcode.com/cli/0.0.1778675695-g1ebb21/amp-linux-x64"
      sha256 "4d12dab41ce9a64d99426a8be8fd57b2a1238033ac2987a17bceb4372bcc0bb9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
