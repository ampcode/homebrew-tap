class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774800294-g357dbb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774800294-g357dbb/amp-darwin-arm64"
      sha256 "6d36b3d4b89dd3372e54ac04463bc4087dc4dd76f76478a84cd5168c2d610976"
    else
      url "https://static.ampcode.com/cli/0.0.1774800294-g357dbb/amp-darwin-x64"
      sha256 "eee95aa8a09340cbff6771031d9966dd52b1215534d31f9c843931335b24f412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774800294-g357dbb/amp-linux-arm64"
      sha256 "e2a6dcfb35bcb3f0b45caf159d14869133c48bb49983212502d15394c86e3846"
    else
      url "https://static.ampcode.com/cli/0.0.1774800294-g357dbb/amp-linux-x64"
      sha256 "e5e1daafdb6c82bc0e6f295006bbda7c40d092eaa4f677f9d8ef43b9b5a703d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
