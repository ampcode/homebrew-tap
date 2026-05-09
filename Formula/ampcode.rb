class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778302884-gf21ed3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778302884-gf21ed3/amp-darwin-arm64"
      sha256 "e39a35adbccd0fdbfc49d97afdac7d3254df4f35991be1fa425b3d13aa885721"
    else
      url "https://static.ampcode.com/cli/0.0.1778302884-gf21ed3/amp-darwin-x64"
      sha256 "ac17c648122da357a7623ba4b9c44e9efd2fddeb4c80edf5a1caa94aaeab87e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778302884-gf21ed3/amp-linux-arm64"
      sha256 "dfb72ba73a08490b3a50af87558f6234cd7a9ab19610238a3d117074d246b8cb"
    else
      url "https://static.ampcode.com/cli/0.0.1778302884-gf21ed3/amp-linux-x64"
      sha256 "d355d041286809cca7c6c95398d1e3ef1a37a99ae3f134e2c655b3f8797215d7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
