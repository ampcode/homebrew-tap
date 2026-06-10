class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781115741-g9f44fa"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781115741-g9f44fa/amp-darwin-arm64"
      sha256 "d8cd6a6e38aebe54be404d26f4278bc37bf8c36076ec58535db7101f03839836"
    else
      url "https://static.ampcode.com/cli/0.0.1781115741-g9f44fa/amp-darwin-x64"
      sha256 "fa304b64786945cd93d3cace5cadef61b374418e1e4ba017c2673876bdaba9ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781115741-g9f44fa/amp-linux-arm64"
      sha256 "9576e3e722270d97d3e98faaad8068e124b8872cd3b908c61c46f34daca1dbf5"
    else
      url "https://static.ampcode.com/cli/0.0.1781115741-g9f44fa/amp-linux-x64"
      sha256 "c401779c6c94c92920426f21484925c30fb7e5e08791bda7568651decaa9f628"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
