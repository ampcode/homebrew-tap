class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777321207-ge83d73"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777321207-ge83d73/amp-darwin-arm64"
      sha256 "f277b345299d7b53603d1faaf03a4d2f30672ac317a41318101d4decce73dd58"
    else
      url "https://static.ampcode.com/cli/0.0.1777321207-ge83d73/amp-darwin-x64"
      sha256 "33dc61638b94353fd97ae25f4d2cbfff91c7287c3a7566c3cb5f5f6fe602e938"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777321207-ge83d73/amp-linux-arm64"
      sha256 "cc2e66b3f1b2572c4b34bc26521b56463a61cbaaad5f6046b1f5672eb5a3f515"
    else
      url "https://static.ampcode.com/cli/0.0.1777321207-ge83d73/amp-linux-x64"
      sha256 "b729755c7707a8a4814e55c208879722d8f2b071ccef51e113dc1895a35b09de"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
