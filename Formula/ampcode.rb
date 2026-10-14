class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791993665-gad0339"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791993665-gad0339/amp-darwin-arm64"
      sha256 "574296300e3b30b7ff02e79ad7096cc154b80eab32ab39380fa2338c950fb308"
    else
      url "https://static.ampcode.com/cli/0.0.1791993665-gad0339/amp-darwin-x64"
      sha256 "acd0c4dfffb3aeadcf9541c7870394798bc3b1f2faf49ee5e1b94fecfc6aded2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791993665-gad0339/amp-linux-arm64"
      sha256 "1055d036b6f6c0eaab0dbb07683f616ff51ff4acdaa76fe5fcf90face9d47a53"
    else
      url "https://static.ampcode.com/cli/0.0.1791993665-gad0339/amp-linux-x64"
      sha256 "023118d1a5f747d1486418b4a79f830687085716f8831fbcdac6de7ff0603766"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
