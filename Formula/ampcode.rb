class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788825688-gc3e098"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788825688-gc3e098/amp-darwin-arm64"
      sha256 "ba1a168a24f1300c4151f691d240893258e29883fa9449f2454ff602be8f3e5f"
    else
      url "https://static.ampcode.com/cli/0.0.1788825688-gc3e098/amp-darwin-x64"
      sha256 "d5c0512fc79ee8f2aae367296a9e63fbd26c614305f779dc3d79eb1d676f97af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788825688-gc3e098/amp-linux-arm64"
      sha256 "a1c7960233a980cbbf186bd9661d95ffcf06d84bda8ff2efa4b943dff4daaea9"
    else
      url "https://static.ampcode.com/cli/0.0.1788825688-gc3e098/amp-linux-x64"
      sha256 "7d1529c1c9ccddab8a0bcd5786a37da73a53e1b9ceb4b3fe94cfe4bd66fa3a53"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
