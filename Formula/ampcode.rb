class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793808035-gb6dfb9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793808035-gb6dfb9/amp-darwin-arm64"
      sha256 "76138696f297673b80b68d59efa61b386e1e8c72ebd7107de843637c5e33a60b"
    else
      url "https://static.ampcode.com/cli/0.0.1793808035-gb6dfb9/amp-darwin-x64"
      sha256 "849d4ccf30f43a1393fa2f112fb675a1af72b0df2fb05b8669fbc5f051acd1c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793808035-gb6dfb9/amp-linux-arm64"
      sha256 "312c35b9026d0cce433caa8c8c9397562a97623979c35889eef145a1ee95435e"
    else
      url "https://static.ampcode.com/cli/0.0.1793808035-gb6dfb9/amp-linux-x64"
      sha256 "3d50dc23d5434e61bde333bcb7ff399c5763090f9b21004c01ad4eea3c769d40"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
