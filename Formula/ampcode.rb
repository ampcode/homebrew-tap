class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771243550-geaf318"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771243550-geaf318/amp-darwin-arm64"
      sha256 "e273f490f0abe3004b8fe14adb1bc28732ffcaa5e3794b193d9d0f8741188ee8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771243550-geaf318/amp-darwin-x64"
      sha256 "3f1e27830806f918a39b7fbabdc682c2f5b4bfbe19920d242903aef5d74d324b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771243550-geaf318/amp-linux-arm64"
      sha256 "5cf1ebc965691f29f5cfc33be22aabb7ef568abf4991b6abd2f801ffe5feaa49"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771243550-geaf318/amp-linux-x64"
      sha256 "8028b08b1b0cc673d682672bcb4cfdf49102d761f3291bc3a3d22931014bb12e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
