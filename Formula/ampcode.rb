class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781060470-g7e7ccf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781060470-g7e7ccf/amp-darwin-arm64"
      sha256 "f7cde502f2ed16edb9b6ea0c5ba8b138f1c7937a58e8780fce56431f4a9d118d"
    else
      url "https://static.ampcode.com/cli/0.0.1781060470-g7e7ccf/amp-darwin-x64"
      sha256 "d930fdf7978c408c14df27946a8f4df97330a2904bd6ede164fa7a28b636acc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781060470-g7e7ccf/amp-linux-arm64"
      sha256 "11f6310f6a187284edeee9412ed96d92c63276e5b51def41e5e4130b0f46d630"
    else
      url "https://static.ampcode.com/cli/0.0.1781060470-g7e7ccf/amp-linux-x64"
      sha256 "ba1187d7d42e3afd5bfb32639e3db01b9c9cdfd38835f5075bd30478baa97616"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
