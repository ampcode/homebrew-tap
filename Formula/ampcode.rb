class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789702718-gecc184"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789702718-gecc184/amp-darwin-arm64"
      sha256 "41cb2bfdcb797fb3bb541647ca113c1ce156a2acc1cc5f9aef09c9b42b737444"
    else
      url "https://static.ampcode.com/cli/0.0.1789702718-gecc184/amp-darwin-x64"
      sha256 "acfb70559de1e6e303a9c452418546860e0ae845109bd4d4b8616f24bc13ed0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789702718-gecc184/amp-linux-arm64"
      sha256 "0d8f32bfc3b2e7c0f85396e76accb884c5c492fbfe856b52d49db3a0bc6e2134"
    else
      url "https://static.ampcode.com/cli/0.0.1789702718-gecc184/amp-linux-x64"
      sha256 "a17fe21946c114f91fb4d03ee8b9e2238b7a84c589948b0818ee70ecf69fbc9c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
