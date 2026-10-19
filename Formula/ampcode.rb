class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792425645-g3c5d47"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792425645-g3c5d47/amp-darwin-arm64"
      sha256 "84e71b37dd017a53e17cb2b53aa1f0ae76dd0a0ad2c66759698995b3a45a05ff"
    else
      url "https://static.ampcode.com/cli/0.0.1792425645-g3c5d47/amp-darwin-x64"
      sha256 "c5833f65afffddb18b2e6bab5bd1d722d052fd71b2b100ee790bd583768df108"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792425645-g3c5d47/amp-linux-arm64"
      sha256 "98710daf6633a1bc0f9b0e23c060025829e6140ccddd08872adda7ecef6c1a0b"
    else
      url "https://static.ampcode.com/cli/0.0.1792425645-g3c5d47/amp-linux-x64"
      sha256 "c4ce48772263a77faac4621db481e62df2d66abf62abc729b06977f2c39a58a6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
