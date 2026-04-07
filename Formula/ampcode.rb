class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775571702-gac76fb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775571702-gac76fb/amp-darwin-arm64"
      sha256 "3978274330c1949b20b852ff20537316dd7f055db6c8323088223f33f760983e"
    else
      url "https://static.ampcode.com/cli/0.0.1775571702-gac76fb/amp-darwin-x64"
      sha256 "a69a37859da6c881ce156c6889717dc7a11c167fd5e9dc9379b4ef3a720ac930"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775571702-gac76fb/amp-linux-arm64"
      sha256 "0ec3607f1af59fba63dea59d8ac2e94948be6c20d23e6e9dc3a492c16ed4ab29"
    else
      url "https://static.ampcode.com/cli/0.0.1775571702-gac76fb/amp-linux-x64"
      sha256 "3a700661a23434ec257a3cc26a76b48d60c89a46abf3131d1235d2b6654fafca"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
