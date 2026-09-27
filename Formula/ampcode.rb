class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790467310-ge147a9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790467310-ge147a9/amp-darwin-arm64"
      sha256 "1abc8d0ffaa855b6d249b4be979765e66e0913413e61b50f9a720618a8f21dcc"
    else
      url "https://static.ampcode.com/cli/0.0.1790467310-ge147a9/amp-darwin-x64"
      sha256 "e0c49eff47f0251db055b5a56c72d35856869604293c2a27f3538a49b0cadedc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790467310-ge147a9/amp-linux-arm64"
      sha256 "02c50e413f79f783d374397b7ea3d0e22676a60c46bc6926ff34e0e3d06d0054"
    else
      url "https://static.ampcode.com/cli/0.0.1790467310-ge147a9/amp-linux-x64"
      sha256 "59c26989c8aa2c1c9be337845b8397d62e36809e65cf026a03722b283069ad86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
