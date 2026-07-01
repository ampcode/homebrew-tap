class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782936167-g05ca76"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782936167-g05ca76/amp-darwin-arm64"
      sha256 "9b06a17240b92c251261e7bfc6d0afc6f52437bf7efa8eb63a68b4c6e3938ac8"
    else
      url "https://static.ampcode.com/cli/0.0.1782936167-g05ca76/amp-darwin-x64"
      sha256 "f668a06e15030d08c3b09d788980d87be461e01252a16750666ce2bab1196e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782936167-g05ca76/amp-linux-arm64"
      sha256 "9aefa6e461615b85103be78c2e5e3142c64c89c9020b39529a6a70ed2db81809"
    else
      url "https://static.ampcode.com/cli/0.0.1782936167-g05ca76/amp-linux-x64"
      sha256 "3425cfdb85731800eca186c57579449218c3fe6f61fe408ed3f0f09354f73f4c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
