class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785488326-gdfd462"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785488326-gdfd462/amp-darwin-arm64"
      sha256 "6c1341e94461dc912170be1db57e9be77b62c11bbbf67bab44ea65ada8d4f09d"
    else
      url "https://static.ampcode.com/cli/0.0.1785488326-gdfd462/amp-darwin-x64"
      sha256 "ef8aedb1563e23032444c279374e7bc4cbb83790d6ed06fb2ecea7b537ce49f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785488326-gdfd462/amp-linux-arm64"
      sha256 "85dc222d12d19e57b2bd89f66e388f0227afa559bccb3c8d9eba807c6f28ff4a"
    else
      url "https://static.ampcode.com/cli/0.0.1785488326-gdfd462/amp-linux-x64"
      sha256 "f09df6866bc5677bba7377329bd5fb8966288749021561681b7af4c63e8f5fff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
