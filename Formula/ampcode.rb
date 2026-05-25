class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779727188-g85c1c9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779727188-g85c1c9/amp-darwin-arm64"
      sha256 "3be082a6fa0bae6925f7b1bbc80ddf558914f2c20a3392bd50fa89bdcc4bd220"
    else
      url "https://static.ampcode.com/cli/0.0.1779727188-g85c1c9/amp-darwin-x64"
      sha256 "85c3af415659faf47c4fd662cd5019b35840f35fd5bc204a74fddaf809d1cffa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779727188-g85c1c9/amp-linux-arm64"
      sha256 "4c0ae8b508af921c46a91ae9dcb076a9ced6d01d5f8b8aa9b2f36fc3760078a5"
    else
      url "https://static.ampcode.com/cli/0.0.1779727188-g85c1c9/amp-linux-x64"
      sha256 "335ee6661b444ca44dc37894e7d2fd8acf7b2190de0995409a666f65755ac26f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
