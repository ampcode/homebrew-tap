class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777884319-gf479c3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777884319-gf479c3/amp-darwin-arm64"
      sha256 "7ab90c440e7b7325260700e90db5457614e7415f58c25faf482607495371ba9e"
    else
      url "https://static.ampcode.com/cli/0.0.1777884319-gf479c3/amp-darwin-x64"
      sha256 "91b4d17fe3825b8b4091c751e019f9148a7e1ea9aec5d1bc918b1a733703ff24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777884319-gf479c3/amp-linux-arm64"
      sha256 "4d12abee39dda1d02fdf3e2ab0105b5eeff29b832298975639020e43bfad739d"
    else
      url "https://static.ampcode.com/cli/0.0.1777884319-gf479c3/amp-linux-x64"
      sha256 "07d346446e13d435d40335b9ad4183be36aaf4c660839602c6713554ddafbbb1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
