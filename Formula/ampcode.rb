class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780656948-g0a52b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780656948-g0a52b8/amp-darwin-arm64"
      sha256 "8fbae1c343c50067490d0c71b37dd4e12163a9d1e2c382a7335d1a6a62804aec"
    else
      url "https://static.ampcode.com/cli/0.0.1780656948-g0a52b8/amp-darwin-x64"
      sha256 "437fbeaaeeb067b248ad8c4b79bf64e03a2c49c5f3c1e3f87fb1db701972dbe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780656948-g0a52b8/amp-linux-arm64"
      sha256 "590cab33f63f7a65a2ea5d3477b8a9501e7fac7a59498a8c98a3cab8628fa852"
    else
      url "https://static.ampcode.com/cli/0.0.1780656948-g0a52b8/amp-linux-x64"
      sha256 "beb7f3d2cf7b77742b4c8906c529b28e53a9971f9953195af04b3a266320ffcc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
